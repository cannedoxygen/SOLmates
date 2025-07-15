.class public Lcom/facebook/react/devsupport/StackTraceHelper;
.super Ljava/lang/Object;
.source "StackTraceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;
    }
.end annotation


# static fields
.field public static final COLUMN_KEY:Ljava/lang/String; = "column"

.field public static final FILE_KEY:Ljava/lang/String; = "file"

.field public static final ID_KEY:Ljava/lang/String; = "id"

.field public static final IS_FATAL_KEY:Ljava/lang/String; = "isFatal"

.field public static final LINE_NUMBER_KEY:Ljava/lang/String; = "lineNumber"

.field public static final MESSAGE_KEY:Ljava/lang/String; = "message"

.field public static final METHOD_NAME_KEY:Ljava/lang/String; = "methodName"

.field private static final STACK_FRAME_PATTERN1:Ljava/util/regex/Pattern;

.field private static final STACK_FRAME_PATTERN2:Ljava/util/regex/Pattern;

.field public static final STACK_KEY:Ljava/lang/String; = "stack"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    nop

    .line 42
    const-string v0, "^(?:(.*?)@)?(.*?)\\:([0-9]+)\\:([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN1:Ljava/util/regex/Pattern;

    .line 43
    nop

    .line 44
    const-string v0, "\\s*(?:at)\\s*(.+?)\\s*[@(](.*):([0-9]+):([0-9]+)[)]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN2:Ljava/util/regex/Pattern;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertJavaStackTrace(Ljava/lang/Throwable;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 11
    .param p0, "exception"    # Ljava/lang/Throwable;

    .line 217
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 218
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    new-array v1, v1, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 219
    .local v1, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 220
    new-instance v3, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    aget-object v4, v0, v2

    .line 222
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v0, v2

    .line 223
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    aget-object v4, v0, v2

    .line 224
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aget-object v4, v0, v2

    .line 225
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V

    aput-object v3, v1, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static convertJsStackTrace(Lcom/facebook/react/bridge/ReadableArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 19
    .param p0, "stack"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 133
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 134
    .local v2, "size":I
    :goto_0
    new-array v3, v2, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 135
    .local v3, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 136
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v5

    .line 137
    .local v5, "type":Lcom/facebook/react/bridge/ReadableType;
    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_4

    .line 138
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    .line 139
    .local v6, "frame":Lcom/facebook/react/bridge/ReadableMap;
    const-string v7, "methodName"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "methodName":Ljava/lang/String;
    const-string v8, "file"

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, "fileName":Ljava/lang/String;
    nop

    .line 142
    const-string v8, "collapse"

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v6, v8}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v13, v8

    goto :goto_2

    :cond_1
    move v13, v1

    .line 143
    .local v13, "collapse":Z
    :goto_2
    const/4 v8, -0x1

    .line 144
    .local v8, "lineNumber":I
    const-string v9, "lineNumber"

    invoke-interface {v6, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6, v9}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 145
    invoke-interface {v6, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v16, v8

    goto :goto_3

    .line 147
    :cond_2
    move/from16 v16, v8

    .end local v8    # "lineNumber":I
    .local v16, "lineNumber":I
    :goto_3
    const/4 v8, -0x1

    .line 148
    .local v8, "columnNumber":I
    const-string v9, "column"

    invoke-interface {v6, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6, v9}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 149
    invoke-interface {v6, v9}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v17, v8

    goto :goto_4

    .line 151
    :cond_3
    move/from16 v17, v8

    .end local v8    # "columnNumber":I
    .local v17, "columnNumber":I
    :goto_4
    new-instance v18, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/4 v14, 0x0

    move-object/from16 v8, v18

    move-object v9, v15

    move-object v10, v7

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v8 .. v14}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V

    aput-object v18, v3, v4

    .end local v6    # "frame":Lcom/facebook/react/bridge/ReadableMap;
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v13    # "collapse":Z
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v16    # "lineNumber":I
    .end local v17    # "columnNumber":I
    goto :goto_5

    .line 152
    :cond_4
    sget-object v6, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v5, v6, :cond_5

    .line 153
    new-instance v6, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V

    aput-object v6, v3, v4

    goto :goto_6

    .line 152
    :cond_5
    :goto_5
    nop

    .line 135
    .end local v5    # "type":Lcom/facebook/react/bridge/ReadableType;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 156
    .end local v4    # "i":I
    :cond_6
    return-object v3
.end method

.method public static convertJsStackTrace(Ljava/lang/String;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 20
    .param p0, "stack"    # Ljava/lang/String;

    .line 191
    const-string v0, "\n"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "stackTrace":[Ljava/lang/String;
    array-length v2, v0

    new-array v2, v2, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 193
    .local v2, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 194
    sget-object v4, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN1:Ljava/util/regex/Pattern;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 195
    .local v4, "matcher1":Ljava/util/regex/Matcher;
    sget-object v5, Lcom/facebook/react/devsupport/StackTraceHelper;->STACK_FRAME_PATTERN2:Ljava/util/regex/Pattern;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 197
    .local v5, "matcher2":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    move-object v6, v5

    .local v6, "matcher":Ljava/util/regex/Matcher;
    goto :goto_1

    .line 199
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    move-object v6, v4

    .line 205
    .restart local v6    # "matcher":Ljava/util/regex/Matcher;
    :goto_1
    new-instance v13, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    .line 207
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v7, "(unknown)"

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v9, v7

    .line 209
    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 210
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V

    aput-object v13, v2, v3

    goto :goto_3

    .line 202
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v6, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    aget-object v16, v0, v3

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v17, -0x1

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V

    aput-object v6, v2, v3

    .line 203
    nop

    .line 193
    .end local v4    # "matcher1":Ljava/util/regex/Matcher;
    .end local v5    # "matcher2":Ljava/util/regex/Matcher;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public static convertJsStackTrace(Lorg/json/JSONArray;)[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    .locals 19
    .param p0, "stack"    # Lorg/json/JSONArray;

    .line 164
    move-object/from16 v1, p0

    const-string v0, "collapse"

    const-string v2, "column"

    const-string v3, "lineNumber"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    .line 165
    .local v5, "size":I
    :goto_0
    new-array v6, v5, [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 167
    .local v6, "result":[Lcom/facebook/react/devsupport/interfaces/StackFrame;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_4

    .line 168
    :try_start_0
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 169
    .local v8, "frame":Lorg/json/JSONObject;
    const-string v9, "methodName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 170
    .local v12, "methodName":Ljava/lang/String;
    const-string v9, "file"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "fileName":Ljava/lang/String;
    const/4 v9, -0x1

    .line 172
    .local v9, "lineNumber":I
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 173
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    move v9, v10

    .line 175
    :cond_1
    const/4 v10, -0x1

    .line 176
    .local v10, "columnNumber":I
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 177
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move v10, v13

    move/from16 v17, v10

    goto :goto_2

    .line 179
    :cond_2
    move/from16 v17, v10

    .end local v10    # "columnNumber":I
    .local v17, "columnNumber":I
    :goto_2
    nop

    .line 180
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    move v15, v10

    goto :goto_3

    :cond_3
    move v15, v4

    .line 181
    .local v15, "collapse":Z
    :goto_3
    new-instance v18, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;

    const/16 v16, 0x0

    move-object/from16 v10, v18

    move v13, v9

    move/from16 v14, v17

    invoke-direct/range {v10 .. v16}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V

    aput-object v18, v6, v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v8    # "frame":Lorg/json/JSONObject;
    .end local v9    # "lineNumber":I
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v15    # "collapse":Z
    .end local v17    # "columnNumber":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 183
    .end local v7    # "i":I
    :catch_0
    move-exception v0

    .line 184
    .local v0, "exception":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 185
    .end local v0    # "exception":Lorg/json/JSONException;
    :cond_4
    nop

    .line 186
    return-object v6
.end method

.method public static convertParsedError(Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError;)Lcom/facebook/react/bridge/JavaOnlyMap;
    .locals 8
    .param p0, "error"    # Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError;

    .line 263
    invoke-interface {p0}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError;->getFrames()Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v1, "readableMapList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/ReadableMap;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;

    .line 266
    .local v3, "frame":Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;
    new-instance v4, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 267
    .local v4, "map":Lcom/facebook/react/bridge/JavaOnlyMap;
    invoke-interface {v3}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;->getColumnNumber()I

    move-result v5

    int-to-double v5, v5

    const-string v7, "column"

    invoke-virtual {v4, v7, v5, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .line 268
    invoke-interface {v3}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;->getLineNumber()I

    move-result v5

    int-to-double v5, v5

    const-string v7, "lineNumber"

    invoke-virtual {v4, v7, v5, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putDouble(Ljava/lang/String;D)V

    .line 269
    const-string v5, "file"

    invoke-interface {v3}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v5, "methodName"

    invoke-interface {v3}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v3    # "frame":Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError$StackFrame;
    .end local v4    # "map":Lcom/facebook/react/bridge/JavaOnlyMap;
    goto :goto_0

    .line 274
    :cond_0
    new-instance v2, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 275
    .local v2, "data":Lcom/facebook/react/bridge/JavaOnlyMap;
    const-string v3, "message"

    invoke-interface {p0}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v3, "stack"

    invoke-static {v1}, Lcom/facebook/react/bridge/JavaOnlyArray;->from(Ljava/util/List;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 277
    const-string v3, "id"

    invoke-interface {p0}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError;->getExceptionId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v3, "isFatal"

    invoke-interface {p0}, Lcom/facebook/react/interfaces/exceptionmanager/ReactJsExceptionHandler$ParsedError;->isFatal()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-object v2
.end method

.method public static formatFrameSource(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;
    .locals 4
    .param p0, "frame"    # Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "lineInfo":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getLine()I

    move-result v1

    .line 236
    .local v1, "line":I
    if-lez v1, :cond_0

    .line 237
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-interface {p0}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getColumn()I

    move-result v3

    .line 239
    .local v3, "column":I
    if-lez v3, :cond_0

    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .end local v3    # "column":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatStackTrace(Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;
    .locals 7
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "stack"    # [Lcom/facebook/react/devsupport/interfaces/StackFrame;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "stackTrace":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 251
    .local v4, "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    nop

    .line 252
    invoke-interface {v4}, Lcom/facebook/react/devsupport/interfaces/StackFrame;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 253
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 255
    invoke-static {v4}, Lcom/facebook/react/devsupport/StackTraceHelper;->formatFrameSource(Lcom/facebook/react/devsupport/interfaces/StackFrame;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 256
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .end local v4    # "frame":Lcom/facebook/react/devsupport/interfaces/StackFrame;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
