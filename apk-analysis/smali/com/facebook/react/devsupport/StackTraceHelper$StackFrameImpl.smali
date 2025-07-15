.class public Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;
.super Ljava/lang/Object;
.source "StackTraceHelper.java"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/StackFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/devsupport/StackTraceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackFrameImpl"
.end annotation


# instance fields
.field private final mColumn:I

.field private final mFile:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mIsCollapsed:Z

.field private final mLine:I

.field private final mMethod:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .line 65
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "isCollapsed"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFile:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mMethod:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mLine:I

    .line 59
    iput p4, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mColumn:I

    .line 60
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFileName:Ljava/lang/String;

    .line 61
    iput-boolean p5, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mIsCollapsed:Z

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "line"    # I
    .param p5, "column"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFile:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFileName:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mMethod:Ljava/lang/String;

    .line 72
    iput p4, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mLine:I

    .line 73
    iput p5, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mColumn:I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mIsCollapsed:Z

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mColumn:I

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mLine:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->mIsCollapsed:Z

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 11

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getLine()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 123
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->getColumn()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 124
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/StackTraceHelper$StackFrameImpl;->isCollapsed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 119
    const-string v1, "file"

    const-string v3, "methodName"

    const-string v5, "lineNumber"

    const-string v7, "column"

    const-string v9, "collapse"

    invoke-static/range {v1 .. v10}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 118
    return-object v0
.end method
