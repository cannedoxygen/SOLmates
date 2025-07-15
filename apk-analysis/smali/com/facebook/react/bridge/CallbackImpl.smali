.class public final Lcom/facebook/react/bridge/CallbackImpl;
.super Ljava/lang/Object;
.source "CallbackImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/Callback;


# instance fields
.field private final mCallbackId:I

.field private mInvoked:Z

.field private final mJSInstance:Lcom/facebook/react/bridge/JSInstance;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/JSInstance;I)V
    .locals 1
    .param p1, "jsInstance"    # Lcom/facebook/react/bridge/JSInstance;
    .param p2, "callbackId"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/react/bridge/CallbackImpl;->mJSInstance:Lcom/facebook/react/bridge/JSInstance;

    .line 19
    iput p2, p0, Lcom/facebook/react/bridge/CallbackImpl;->mCallbackId:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/bridge/CallbackImpl;->mInvoked:Z

    .line 21
    return-void
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .line 25
    iget-boolean v0, p0, Lcom/facebook/react/bridge/CallbackImpl;->mInvoked:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/facebook/react/bridge/CallbackImpl;->mJSInstance:Lcom/facebook/react/bridge/JSInstance;

    iget v1, p0, Lcom/facebook/react/bridge/CallbackImpl;->mCallbackId:I

    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/JSInstance;->invokeCallback(ILcom/facebook/react/bridge/NativeArrayInterface;)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/bridge/CallbackImpl;->mInvoked:Z

    .line 33
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal callback invocation from native module. This callback type only permits a single invocation from native code."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
