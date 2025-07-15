.class Lcom/facebook/react/animated/NativeAnimatedModule$24;
.super Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;
.source "NativeAnimatedModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/animated/NativeAnimatedModule;->queueAndExecuteBatchedOperations(Lcom/facebook/react/bridge/ReadableArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

.field final synthetic val$opBufferSize:I

.field final synthetic val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;


# direct methods
.method constructor <init>(Lcom/facebook/react/animated/NativeAnimatedModule;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/animated/NativeAnimatedModule;

    .line 1109
    iput-object p1, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    iput p2, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opBufferSize:I

    iput-object p3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule;Lcom/facebook/react/animated/NativeAnimatedModule$UIThreadOperation-IA;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/animated/NativeAnimatedNodesManager;)V
    .locals 9
    .param p1, "animatedNodesManager"    # Lcom/facebook/react/animated/NativeAnimatedNodesManager;

    .line 1112
    iget-object v0, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    .line 1113
    invoke-static {v0}, Lcom/facebook/react/animated/NativeAnimatedModule;->access$100(Lcom/facebook/react/animated/NativeAnimatedModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 1115
    .local v0, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    const/4 v1, -0x1

    .line 1116
    .local v1, "viewTag":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opBufferSize:I

    if-ge v2, v3, :cond_1

    .line 1117
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;->fromId(I)Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;

    move-result-object v2

    .line 1119
    .local v2, "command":Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;
    sget-object v3, Lcom/facebook/react/animated/NativeAnimatedModule$25;->$SwitchMap$com$facebook$react$animated$NativeAnimatedModule$BatchExecutionOpCodes:[I

    invoke-virtual {v2}, Lcom/facebook/react/animated/NativeAnimatedModule$BatchExecutionOpCodes;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1217
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Batch animation execution op: unknown op code"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1202
    :pswitch_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1203
    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 1202
    invoke-virtual {p1, v3, v4, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->addAnimatedEventToView(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 1204
    move v2, v7

    goto/16 :goto_1

    .line 1186
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :pswitch_1
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1187
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    .line 1186
    invoke-virtual {p1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->connectAnimatedNodeToView(II)V

    .line 1188
    move v2, v6

    goto/16 :goto_1

    .line 1206
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_2
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v1

    .line 1207
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v3, v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$mdecrementInFlightAnimationsForViewTag(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    .line 1208
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v4, v5, 0x1

    .line 1209
    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v5, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    .line 1208
    invoke-virtual {p1, v1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->removeAnimatedEventFromView(ILjava/lang/String;I)V

    .line 1210
    move v2, v6

    goto/16 :goto_1

    .line 1162
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_3
    invoke-static {}, Lcom/facebook/react/internal/featureflags/ReactNativeFeatureFlags;->lazyAnimationCallbacks()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1163
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v3}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$menqueueFrameCallback(Lcom/facebook/react/animated/NativeAnimatedModule;)V

    .line 1165
    :cond_0
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v4, 0x1

    .line 1166
    .end local v4    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-interface {v4, v6}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    iget-object v6, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    .line 1165
    invoke-virtual {p1, v3, v4, v6, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->startAnimatingNode(IILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    .line 1167
    move v2, v8

    goto/16 :goto_1

    .line 1190
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :pswitch_4
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    .line 1191
    .local v3, "animatedNodeTag":I
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v1

    .line 1192
    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->this$0:Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-static {v4, v1}, Lcom/facebook/react/animated/NativeAnimatedModule;->-$$Nest$mdecrementInFlightAnimationsForViewTag(Lcom/facebook/react/animated/NativeAnimatedModule;I)V

    .line 1193
    invoke-virtual {p1, v3, v1}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->disconnectAnimatedNodeFromView(II)V

    .line 1194
    move v2, v6

    goto/16 :goto_1

    .line 1176
    .end local v3    # "animatedNodeTag":I
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_5
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1177
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    .line 1176
    invoke-virtual {p1, v3, v4, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->setAnimatedNodeValue(ID)V

    .line 1178
    move v2, v6

    goto/16 :goto_1

    .line 1172
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_6
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1173
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v4

    .line 1172
    invoke-virtual {p1, v3, v4, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->setAnimatedNodeValue(ID)V

    .line 1174
    move v2, v6

    goto/16 :goto_1

    .line 1158
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_7
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1159
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    .line 1158
    invoke-virtual {p1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->disconnectAnimatedNodes(II)V

    .line 1160
    move v2, v6

    goto/16 :goto_1

    .line 1154
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_8
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1155
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    .line 1154
    invoke-virtual {p1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->connectAnimatedNodes(II)V

    .line 1156
    move v2, v6

    goto/16 :goto_1

    .line 1125
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_9
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1126
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 1125
    invoke-virtual {p1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->updateAnimatedNodeConfig(ILcom/facebook/react/bridge/ReadableMap;)V

    .line 1127
    move v2, v6

    goto/16 :goto_1

    .line 1121
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_a
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .line 1122
    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    .line 1121
    invoke-virtual {p1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->createAnimatedNode(ILcom/facebook/react/bridge/ReadableMap;)V

    .line 1123
    move v2, v6

    goto/16 :goto_1

    .line 1213
    .end local v6    # "i":I
    .restart local v4    # "i":I
    :pswitch_b
    add-int/lit8 v4, v4, 0x1

    .line 1215
    move v2, v4

    goto/16 :goto_1

    .line 1199
    :pswitch_c
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->dropAnimatedNode(I)V

    .line 1200
    move v2, v5

    goto :goto_1

    .line 1196
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_d
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->restoreDefaultValues(I)V

    .line 1197
    move v2, v5

    goto :goto_1

    .line 1183
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_e
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->extractAnimatedNodeOffset(I)V

    .line 1184
    move v2, v5

    goto :goto_1

    .line 1180
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_f
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->flattenAnimatedNodeOffset(I)V

    .line 1181
    move v2, v5

    goto :goto_1

    .line 1169
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_10
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopAnimation(I)V

    .line 1170
    move v2, v5

    goto :goto_1

    .line 1151
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_11
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->stopListeningToAnimatedNodeValue(I)V

    .line 1152
    move v2, v5

    goto :goto_1

    .line 1132
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :pswitch_12
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    .line 1133
    .local v3, "tag":I
    new-instance v4, Lcom/facebook/react/animated/NativeAnimatedModule$24$1;

    invoke-direct {v4, p0, v3}, Lcom/facebook/react/animated/NativeAnimatedModule$24$1;-><init>(Lcom/facebook/react/animated/NativeAnimatedModule$24;I)V

    .line 1148
    .local v4, "listener":Lcom/facebook/react/animated/AnimatedNodeValueListener;
    invoke-virtual {p1, v3, v4}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->startListeningToAnimatedNodeValue(ILcom/facebook/react/animated/AnimatedNodeValueListener;)V

    .line 1149
    move v2, v5

    goto :goto_1

    .line 1129
    .end local v3    # "tag":I
    .end local v5    # "i":I
    .local v4, "i":I
    :pswitch_13
    iget-object v3, p0, Lcom/facebook/react/animated/NativeAnimatedModule$24;->val$opsAndArgs:Lcom/facebook/react/bridge/ReadableArray;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .restart local v6    # "i":I
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3, v5}, Lcom/facebook/react/animated/NativeAnimatedNodesManager;->getValue(ILcom/facebook/react/bridge/Callback;)V

    .line 1130
    move v2, v6

    .line 1220
    .end local v6    # "i":I
    .local v2, "i":I
    :goto_1
    goto/16 :goto_0

    .line 1221
    .end local v2    # "i":I
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
