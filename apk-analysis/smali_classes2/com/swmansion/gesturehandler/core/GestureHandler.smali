.class public Lcom/swmansion/gesturehandler/core/GestureHandler;
.super Ljava/lang/Object;
.source "GestureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/core/GestureHandler$AdaptEventException;,
        Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;,
        Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConcreteGestureHandlerT:",
        "Lcom/swmansion/gesturehandler/core/GestureHandler<",
        "TConcreteGestureHandlerT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureHandler.kt\ncom/swmansion/gesturehandler/core/GestureHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,872:1\n79#1:874\n79#1:876\n79#1:878\n79#1:880\n79#1:882\n1#2:873\n1#2:875\n1#2:877\n1#2:879\n1#2:881\n1#2:883\n*S KotlinDebug\n*F\n+ 1 GestureHandler.kt\ncom/swmansion/gesturehandler/core/GestureHandler\n*L\n119#1:874\n121#1:876\n134#1:878\n143#1:880\n164#1:882\n119#1:875\n121#1:877\n134#1:879\n143#1:881\n164#1:883\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\n\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u00086\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00cc\u0001*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002:\u0006\u00cb\u0001\u00cc\u0001\u00cd\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010e\u001a\u00020fJ\u0010\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020\u001dH\u0016J\u0010\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020iH\u0002J\u0010\u0010k\u001a\u00020f2\u0006\u0010l\u001a\u00020WH\u0002J\u0010\u0010m\u001a\u00020f2\u0006\u0010l\u001a\u00020WH\u0002J*\u0010n\u001a\u00028\u00002\u0017\u0010o\u001a\u0013\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020f0p\u00a2\u0006\u0002\u0008qH\u0084\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010rJ\u0006\u0010s\u001a\u00020fJ\u0006\u0010t\u001a\u00020fJ\u0008\u0010u\u001a\u00020fH\u0002J\u0008\u0010v\u001a\u0004\u0018\u00010\u000eJ\u0008\u0010w\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010x\u001a\n z*\u0004\u0018\u00010y0y2\u0006\u0010l\u001a\u00020WH\u0002J\u0010\u0010{\u001a\u00020f2\u0006\u0010j\u001a\u00020iH\u0016J\u0018\u0010|\u001a\u00020f2\u0006\u0010}\u001a\u00020\u00052\u0006\u0010~\u001a\u00020\u0005H\u0016J\u0019\u0010\u007f\u001a\u00020f2\u0006\u0010j\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iH\u0002J\t\u0010\u0081\u0001\u001a\u00020fH\u0016J\u001a\u0010\u0082\u0001\u001a\u00020f2\u0006\u0010j\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iH\u0002J\u001a\u0010\u0083\u0001\u001a\u00020f2\u0006\u0010j\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iH\u0002J\u0007\u0010\u0084\u0001\u001a\u00020fJ\t\u0010\u0085\u0001\u001a\u00020fH\u0002J\u0007\u0010\u0086\u0001\u001a\u00020fJ\t\u0010\u0087\u0001\u001a\u00020\u0005H\u0002J\u0018\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0002J\u0019\u0010\u008c\u0001\u001a\u00020f2\u0007\u0010\u008d\u0001\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iJ\u0014\u0010\u008e\u0001\u001a\u00020\u001d2\u000b\u0010\u008f\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u0000J\u0012\u0010\u0090\u0001\u001a\u00020\u001d2\u0007\u0010\u0091\u0001\u001a\u00020\u0005H\u0002J\"\u0010$\u001a\u00020\u001d2\u0008\u0010]\u001a\u0004\u0018\u00010\\2\u0007\u0010\u0092\u0001\u001a\u00020%2\u0007\u0010\u0093\u0001\u001a\u00020%J\u0011\u0010\u0094\u0001\u001a\u00020f2\u0006\u0010}\u001a\u00020\u0005H\u0002J\u0011\u0010\u0095\u0001\u001a\u00020\u001d2\u0006\u0010j\u001a\u00020iH\u0002J\t\u0010\u0096\u0001\u001a\u00020fH\u0014J\u001a\u0010\u0097\u0001\u001a\u00020f2\u0006\u0010j\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iH\u0014J\u001a\u0010\u0098\u0001\u001a\u00020f2\u0006\u0010j\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iH\u0014J\t\u0010\u0099\u0001\u001a\u00020fH\u0014J\t\u0010\u009a\u0001\u001a\u00020fH\u0014J\u001a\u0010\u009b\u0001\u001a\u00020f2\u0006\u0010}\u001a\u00020\u00052\u0007\u0010\u009c\u0001\u001a\u00020\u0005H\u0014J\u001b\u0010\u009d\u0001\u001a\u00020f2\u0008\u0010]\u001a\u0004\u0018\u00010\\2\u0008\u0010@\u001a\u0004\u0018\u00010AJ\u0007\u0010\u009e\u0001\u001a\u00020fJ\t\u0010\u009f\u0001\u001a\u00020fH\u0016J\t\u0010\u00a0\u0001\u001a\u00020fH\u0016J\u000f\u0010\u00a1\u0001\u001a\u00028\u0000H\u0004\u00a2\u0006\u0003\u0010\u00a2\u0001J\u0016\u0010\u00a3\u0001\u001a\u00028\u00002\u0007\u0010\u00a4\u0001\u001a\u00020\u001d\u00a2\u0006\u0003\u0010\u00a5\u0001J\u0016\u0010\u00a6\u0001\u001a\u00028\u00002\u0007\u0010\u00a7\u0001\u001a\u00020%\u00a2\u0006\u0003\u0010\u00a8\u0001JC\u0010\u00a6\u0001\u001a\u00028\u00002\u0007\u0010\u00a9\u0001\u001a\u00020%2\u0007\u0010\u00aa\u0001\u001a\u00020%2\u0007\u0010\u00ab\u0001\u001a\u00020%2\u0007\u0010\u00ac\u0001\u001a\u00020%2\u0007\u0010\u00ad\u0001\u001a\u00020%2\u0007\u0010\u00ae\u0001\u001a\u00020%\u00a2\u0006\u0003\u0010\u00af\u0001J\u0018\u0010\u00b0\u0001\u001a\u00028\u00002\t\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0003\u0010\u00b2\u0001J\u0015\u0010\u00b3\u0001\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u001d\u00a2\u0006\u0003\u0010\u00a5\u0001J\u0014\u00108\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u00106\u001a\u00020\u0005J\u0016\u0010\u00b4\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u00002\t\u0010\u00b5\u0001\u001a\u0004\u0018\u00010?J\u0011\u0010\u00b6\u0001\u001a\u00020f2\u0006\u0010j\u001a\u00020iH\u0002J\u0015\u0010\u00b7\u0001\u001a\u00028\u00002\u0006\u0010H\u001a\u00020\u001d\u00a2\u0006\u0003\u0010\u00a5\u0001J\u0012\u0010\u00b8\u0001\u001a\u00020\u001d2\u0007\u0010\u0080\u0001\u001a\u00020iH\u0004J\u0016\u0010\u00b9\u0001\u001a\u00020\u001d2\u000b\u0010\u00ba\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0016\u0010\u00bb\u0001\u001a\u00020\u001d2\u000b\u0010\u00ba\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0016\u0010\u00bc\u0001\u001a\u00020\u001d2\u000b\u0010\u00ba\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0014\u0010\u00bd\u0001\u001a\u00020\u001d2\u000b\u0010\u00ba\u0001\u001a\u0006\u0012\u0002\u0008\u00030\u0000J\u0010\u0010\u00be\u0001\u001a\u00020f2\u0007\u0010\u00bf\u0001\u001a\u00020\u0005J\u0010\u0010\u00c0\u0001\u001a\u00020f2\u0007\u0010\u00bf\u0001\u001a\u00020\u0005J\n\u0010\u00c1\u0001\u001a\u00030\u00c2\u0001H\u0016J\u0014\u0010\u00c3\u0001\u001a\u00030\u00c4\u00012\u0008\u0010\u00c5\u0001\u001a\u00030\u00c4\u0001H\u0004J\u0018\u0010\u00c6\u0001\u001a\u00020f2\u0006\u0010j\u001a\u00020i2\u0007\u0010\u0080\u0001\u001a\u00020iJ\u0007\u0010\u00c7\u0001\u001a\u00020\u001dJ\u0017\u0010\u00c8\u0001\u001a\u00020f2\u000e\u0010\u00c9\u0001\u001a\t\u0012\u0004\u0012\u00020f0\u00ca\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u001e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001e\"\u0004\u0008\"\u0010 R\u001e\u0010#\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001eR\u001e\u0010$\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001eR\u001e\u0010&\u001a\u00020%2\u0006\u0010\r\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001e\u0010)\u001a\u00020%2\u0006\u0010\r\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010(R\u000e\u0010+\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010-\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010(R\u0011\u0010/\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010(R\u0011\u00101\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u00082\u0010(R\u0011\u00103\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010(R\u000e\u00105\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00106\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0007\"\u0004\u00088\u0010\tR\u001a\u00109\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001e\"\u0004\u0008;\u0010 R\u001e\u0010<\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\u0007R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001e\u0010F\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010\u0007R\u000e\u0010H\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010I\u001a\u00020\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\u001e\"\u0004\u0008K\u0010 R\u001e\u0010L\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010\u0007R\u001a\u0010N\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\u0007\"\u0004\u0008P\u0010\tR\u001e\u0010Q\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010\u0007R\u000e\u0010S\u001a\u00020TX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010U\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010W0VX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010XR\u001e\u0010Y\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010\u0007R\u000e\u0010[\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010]\u001a\u0004\u0018\u00010\\2\u0008\u0010\r\u001a\u0004\u0018\u00010\\@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010_R\u000e\u0010`\u001a\u00020TX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010a\u001a\u00020%2\u0006\u0010\r\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008b\u0010(R\u001e\u0010c\u001a\u00020%2\u0006\u0010\r\u001a\u00020%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008d\u0010(\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00ce\u0001"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "ConcreteGestureHandlerT",
        "",
        "()V",
        "actionType",
        "",
        "getActionType",
        "()I",
        "setActionType",
        "(I)V",
        "activationIndex",
        "getActivationIndex",
        "setActivationIndex",
        "<set-?>",
        "Lcom/facebook/react/bridge/WritableArray;",
        "allTouchesPayload",
        "getAllTouchesPayload",
        "()Lcom/facebook/react/bridge/WritableArray;",
        "changedTouchesPayload",
        "getChangedTouchesPayload",
        "",
        "eventCoalescingKey",
        "getEventCoalescingKey",
        "()S",
        "hitSlop",
        "",
        "interactionController",
        "Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;",
        "isActive",
        "",
        "()Z",
        "setActive",
        "(Z)V",
        "isAwaiting",
        "setAwaiting",
        "isEnabled",
        "isWithinBounds",
        "",
        "lastAbsolutePositionX",
        "getLastAbsolutePositionX",
        "()F",
        "lastAbsolutePositionY",
        "getLastAbsolutePositionY",
        "lastEventOffsetX",
        "lastEventOffsetY",
        "lastPositionInWindowX",
        "getLastPositionInWindowX",
        "lastPositionInWindowY",
        "getLastPositionInWindowY",
        "lastRelativePositionX",
        "getLastRelativePositionX",
        "lastRelativePositionY",
        "getLastRelativePositionY",
        "manualActivation",
        "mouseButton",
        "getMouseButton",
        "setMouseButton",
        "needsPointerData",
        "getNeedsPointerData",
        "setNeedsPointerData",
        "numberOfPointers",
        "getNumberOfPointers",
        "onTouchEventListener",
        "Lcom/swmansion/gesturehandler/core/OnTouchEventListener;",
        "orchestrator",
        "Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;",
        "getOrchestrator",
        "()Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;",
        "setOrchestrator",
        "(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;)V",
        "pointerType",
        "getPointerType",
        "shouldCancelWhenOutside",
        "shouldResetProgress",
        "getShouldResetProgress",
        "setShouldResetProgress",
        "state",
        "getState",
        "tag",
        "getTag",
        "setTag",
        "touchEventType",
        "getTouchEventType",
        "trackedPointerIDs",
        "",
        "trackedPointers",
        "",
        "Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;",
        "[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;",
        "trackedPointersCount",
        "getTrackedPointersCount",
        "trackedPointersIDsCount",
        "Landroid/view/View;",
        "view",
        "getView",
        "()Landroid/view/View;",
        "windowOffset",
        "x",
        "getX",
        "y",
        "getY",
        "activate",
        "",
        "force",
        "adaptEvent",
        "Landroid/view/MotionEvent;",
        "event",
        "addChangedPointer",
        "pointerData",
        "addPointerToAll",
        "applySelf",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "begin",
        "cancel",
        "cancelPointers",
        "consumeAllTouchesPayload",
        "consumeChangedTouchesPayload",
        "createPointerData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "kotlin.jvm.PlatformType",
        "dispatchHandlerUpdate",
        "dispatchStateChange",
        "newState",
        "prevState",
        "dispatchTouchDownEvent",
        "sourceEvent",
        "dispatchTouchEvent",
        "dispatchTouchMoveEvent",
        "dispatchTouchUpEvent",
        "end",
        "extractAllPointersData",
        "fail",
        "findNextLocalPointerId",
        "getActivity",
        "Landroid/app/Activity;",
        "context",
        "Landroid/content/Context;",
        "handle",
        "transformedEvent",
        "hasCommonPointers",
        "other",
        "isButtonInConfig",
        "clickedButton",
        "posX",
        "posY",
        "moveToState",
        "needAdapt",
        "onCancel",
        "onHandle",
        "onHandleHover",
        "onPrepare",
        "onReset",
        "onStateChange",
        "previousState",
        "prepare",
        "reset",
        "resetConfig",
        "resetProgress",
        "self",
        "()Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "setEnabled",
        "enabled",
        "(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "setHitSlop",
        "padding",
        "(F)Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "leftPad",
        "topPad",
        "rightPad",
        "bottomPad",
        "width",
        "height",
        "(FFFFFF)Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "setInteractionController",
        "controller",
        "(Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;)Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "setManualActivation",
        "setOnTouchEventListener",
        "listener",
        "setPointerType",
        "setShouldCancelWhenOutside",
        "shouldActivateWithMouse",
        "shouldBeCancelledBy",
        "handler",
        "shouldRecognizeSimultaneously",
        "shouldRequireToWaitForFailure",
        "shouldWaitForHandlerFailure",
        "startTrackingPointer",
        "pointerId",
        "stopTrackingPointer",
        "toString",
        "",
        "transformPoint",
        "Landroid/graphics/PointF;",
        "point",
        "updatePointerData",
        "wantEvents",
        "withMarkedAsInBounds",
        "closure",
        "Lkotlin/Function0;",
        "AdaptEventException",
        "Companion",
        "PointerData",
        "react-native-gesture-handler_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_TYPE_JS_FUNCTION_NEW_API:I = 0x4

.field public static final ACTION_TYPE_JS_FUNCTION_OLD_API:I = 0x3

.field public static final ACTION_TYPE_NATIVE_ANIMATED_EVENT:I = 0x2

.field public static final ACTION_TYPE_REANIMATED_WORKLET:I = 0x1

.field public static final Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

.field public static final DIRECTION_DOWN:I = 0x8

.field public static final DIRECTION_LEFT:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x4

.field private static final HIT_SLOP_BOTTOM_IDX:I = 0x3

.field private static final HIT_SLOP_HEIGHT_IDX:I = 0x5

.field private static final HIT_SLOP_LEFT_IDX:I = 0x0

.field public static final HIT_SLOP_NONE:F = NaNf

.field private static final HIT_SLOP_RIGHT_IDX:I = 0x2

.field private static final HIT_SLOP_TOP_IDX:I = 0x1

.field private static final HIT_SLOP_WIDTH_IDX:I = 0x4

.field private static final MAX_POINTERS_COUNT:I = 0xc

.field public static final POINTER_TYPE_MOUSE:I = 0x2

.field public static final POINTER_TYPE_OTHER:I = 0x3

.field public static final POINTER_TYPE_STYLUS:I = 0x1

.field public static final POINTER_TYPE_TOUCH:I = 0x0

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_BEGAN:I = 0x2

.field public static final STATE_CANCELLED:I = 0x3

.field public static final STATE_END:I = 0x5

.field public static final STATE_FAILED:I = 0x1

.field public static final STATE_UNDETERMINED:I

.field private static nextEventCoalescingKey:S

.field private static pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static pointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private actionType:I

.field private activationIndex:I

.field private allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

.field private changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

.field private eventCoalescingKey:S

.field private hitSlop:[F

.field private interactionController:Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

.field private isActive:Z

.field private isAwaiting:Z

.field private isEnabled:Z

.field private isWithinBounds:Z

.field private lastAbsolutePositionX:F

.field private lastAbsolutePositionY:F

.field private lastEventOffsetX:F

.field private lastEventOffsetY:F

.field private manualActivation:Z

.field private mouseButton:I

.field private needsPointerData:Z

.field private numberOfPointers:I

.field private onTouchEventListener:Lcom/swmansion/gesturehandler/core/OnTouchEventListener;

.field private orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

.field private pointerType:I

.field private shouldCancelWhenOutside:Z

.field private shouldResetProgress:Z

.field private state:I

.field private tag:I

.field private touchEventType:I

.field private final trackedPointerIDs:[I

.field private final trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

.field private trackedPointersCount:I

.field private trackedPointersIDsCount:I

.field private view:Landroid/view/View;

.field private final windowOffset:[I

.field private x:F

.field private y:F


# direct methods
.method public static synthetic $r8$lambda$JnXYl4JX7KmbQ-WgOuoyOFRf7TI(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setEnabled$lambda$3$lambda$2(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0xc

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    .line 25
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    .line 49
    new-array v1, v0, [Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    :goto_1
    if-ge v3, v0, :cond_1

    const/4 v2, 0x0

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerType:I

    .line 22
    return-void
.end method

.method public static final synthetic access$getPointerCoords$cp()[Landroid/view/MotionEvent$PointerCoords;
    .locals 1

    .line 22
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static final synthetic access$getPointerProps$cp()[Landroid/view/MotionEvent$PointerProperties;
    .locals 1

    .line 22
    sget-object v0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static final synthetic access$getTrackedPointerIDs$p(Lcom/swmansion/gesturehandler/core/GestureHandler;)[I
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 22
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    return-object v0
.end method

.method public static final synthetic access$getTrackedPointersIDsCount$p(Lcom/swmansion/gesturehandler/core/GestureHandler;)I
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 22
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    return v0
.end method

.method public static final synthetic access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 1
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 22
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->self()Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setPointerCoords$cp([Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p0, "<set-?>"    # [Landroid/view/MotionEvent$PointerCoords;

    .line 22
    sput-object p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method public static final synthetic access$setPointerProps$cp([Landroid/view/MotionEvent$PointerProperties;)V
    .locals 0
    .param p0, "<set-?>"    # [Landroid/view/MotionEvent$PointerProperties;

    .line 22
    sput-object p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;

    return-void
.end method

.method private final adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 246
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->needAdapt(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    return-object v2

    .line 249
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 250
    .local v0, "action":I
    const/4 v3, -0x1

    .line 251
    .local v3, "actionIndex":I
    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 260
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 261
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 262
    .local v8, "actionPointer":I
    iget-object v9, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v9, v9, v8

    if-eq v9, v6, :cond_2

    .line 263
    iget v4, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    if-ne v4, v7, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    .line 265
    :cond_2
    nop

    .line 262
    :goto_0
    move v0, v4

    goto :goto_2

    .line 252
    .end local v8    # "actionPointer":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 253
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 254
    .restart local v8    # "actionPointer":I
    iget-object v9, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v9, v9, v8

    if-eq v9, v6, :cond_4

    .line 255
    iget v4, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    if-ne v4, v7, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x5

    goto :goto_1

    .line 257
    :cond_4
    nop

    .line 254
    :goto_1
    move v0, v4

    .line 268
    .end local v8    # "actionPointer":I
    :goto_2
    sget-object v4, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    iget v8, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    invoke-static {v4, v8}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$initPointerProps(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;I)V

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v8, v9

    .line 271
    .local v8, "deltaX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    .line 272
    .local v9, "deltaY":F
    invoke-virtual {v2, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 273
    const/4 v10, 0x0

    .line 274
    .local v10, "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    move v14, v10

    move v10, v4

    move v4, v0

    .line 275
    .end local v0    # "action":I
    .local v4, "action":I
    .local v10, "count":I
    .local v11, "size":I
    .local v14, "index":I
    :goto_3
    const-string v0, "pointerCoords"

    const-string v12, "pointerProps"

    const/4 v13, 0x0

    if-ge v14, v11, :cond_a

    .line 276
    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 277
    .local v15, "origPointerId":I
    iget-object v5, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v5, v5, v15

    if-eq v5, v6, :cond_9

    .line 278
    sget-object v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v5, :cond_5

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v13

    :cond_5
    aget-object v5, v5, v10

    invoke-virtual {v2, v14, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 279
    sget-object v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v5, :cond_6

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v13

    :cond_6
    aget-object v5, v5, v10

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v12, v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v12, v12, v15

    iput v12, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 280
    sget-object v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v5, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v13, v5

    :goto_4
    aget-object v0, v13, v10

    invoke-virtual {v2, v14, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 281
    if-ne v14, v3, :cond_8

    .line 282
    shl-int/lit8 v0, v10, 0x8

    or-int/2addr v4, v0

    .line 284
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 286
    :cond_9
    nop

    .end local v15    # "origPointerId":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 290
    :cond_a
    sget-object v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v5, :cond_b

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v13

    :cond_b
    array-length v5, v5

    if-nez v5, :cond_c

    move v5, v7

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_12

    sget-object v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v5, :cond_d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v13

    :cond_d
    array-length v5, v5

    if-nez v5, :cond_e

    move v5, v7

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_f

    move v6, v14

    goto/16 :goto_a

    .line 294
    :cond_f
    const/4 v5, 0x0

    .line 295
    .local v5, "result":Landroid/view/MotionEvent;
    nop

    .line 296
    nop

    .line 297
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    .line 299
    nop

    .line 300
    nop

    .line 301
    sget-object v17, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v17, :cond_10

    :try_start_1
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v13

    goto :goto_7

    .line 312
    :catch_0
    move-exception v0

    move v6, v14

    goto :goto_9

    .line 301
    :cond_10
    move-object/from16 v18, v17

    .line 302
    :goto_7
    :try_start_2
    sget-object v12, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v12, :cond_11

    :try_start_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v19, v13

    goto :goto_8

    :cond_11
    move-object/from16 v19, v12

    .line 303
    :goto_8
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v20

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v22

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v23

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v24

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v25

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v26

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v27
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 296
    move-wide v12, v6

    move v6, v14

    .end local v14    # "index":I
    .local v6, "index":I
    move-wide v14, v15

    move/from16 v16, v4

    move/from16 v17, v10

    :try_start_5
    invoke-static/range {v12 .. v27}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v7, "obtain(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 315
    .end local v5    # "result":Landroid/view/MotionEvent;
    .local v0, "result":Landroid/view/MotionEvent;
    neg-float v5, v8

    neg-float v7, v9

    invoke-virtual {v2, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 316
    neg-float v5, v8

    neg-float v7, v9

    invoke-virtual {v0, v5, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 317
    return-object v0

    .line 312
    .end local v0    # "result":Landroid/view/MotionEvent;
    .restart local v5    # "result":Landroid/view/MotionEvent;
    :catch_1
    move-exception v0

    goto :goto_9

    .end local v6    # "index":I
    .restart local v14    # "index":I
    :catch_2
    move-exception v0

    move v6, v14

    .line 313
    .end local v14    # "index":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "index":I
    :goto_9
    new-instance v7, Lcom/swmansion/gesturehandler/core/GestureHandler$AdaptEventException;

    invoke-direct {v7, v1, v2, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler$AdaptEventException;-><init>(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/MotionEvent;Ljava/lang/IllegalArgumentException;)V

    throw v7

    .line 290
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "result":Landroid/view/MotionEvent;
    .end local v6    # "index":I
    .restart local v14    # "index":I
    :cond_12
    move v6, v14

    .line 291
    .end local v14    # "index":I
    .restart local v6    # "index":I
    :goto_a
    new-instance v5, Ljava/lang/IllegalStateException;

    sget-object v7, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v7, :cond_13

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v13

    :cond_13
    array-length v0, v7

    sget-object v7, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v7, :cond_14

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    move-object v13, v7

    :goto_b
    array-length v7, v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pointerCoords.size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", pointerProps.size="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final addChangedPointer(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V
    .locals 2
    .param p1, "pointerData"    # Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    .line 514
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    if-nez v0, :cond_0

    .line 515
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->createPointerData(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 519
    return-void
.end method

.method private final addPointerToAll(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V
    .locals 2
    .param p1, "pointerData"    # Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    .line 522
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    if-nez v0, :cond_0

    .line 523
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->createPointerData(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 527
    return-void
.end method

.method private final cancelPointers()V
    .locals 10

    .line 497
    const/4 v0, 0x4

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->touchEventType:I

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 499
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->extractAllPointersData()V

    .line 501
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 502
    .local v4, "pointer":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    if-eqz v4, :cond_0

    move-object v5, v4

    .local v5, "it":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    const/4 v6, 0x0

    .line 503
    .local v6, "$i$a$-let-GestureHandler$cancelPointers$1":I
    invoke-direct {p0, v5}, Lcom/swmansion/gesturehandler/core/GestureHandler;->addChangedPointer(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V

    .line 504
    nop

    .line 502
    .end local v5    # "it":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    .end local v6    # "$i$a$-let-GestureHandler$cancelPointers$1":I
    nop

    .line 501
    .end local v4    # "pointer":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    :cond_1
    iput v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    .line 508
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchEvent()V

    .line 511
    return-void
.end method

.method private final createPointerData(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p1, "pointerData"    # Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    .line 529
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$createPointerData_u24lambda_u2414":Lcom/facebook/react/bridge/WritableMap;
    const/4 v2, 0x0

    .line 530
    .local v2, "$i$a$-apply-GestureHandler$createPointerData$1":I
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getPointerId()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 531
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getX()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "x"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 532
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getY()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "y"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 533
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getAbsoluteX()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "absoluteX"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 534
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getAbsoluteY()F

    move-result v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    float-to-double v3, v3

    const-string v5, "absoluteY"

    invoke-interface {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 535
    nop

    .line 529
    .end local v1    # "$this$createPointerData_u24lambda_u2414":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "$i$a$-apply-GestureHandler$createPointerData$1":I
    nop

    .line 535
    return-object v0
.end method

.method private final dispatchTouchDownEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 402
    const/4 v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->touchEventType:I

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 404
    .local v1, "pointerId":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v8, v2, v3

    .line 405
    .local v8, "offsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v9, v2, v3

    .line 407
    .local v9, "offsetY":F
    iget-object v10, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    new-instance v11, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    .line 408
    nop

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float v6, v2, v3

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v9

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    aget v3, v3, v0

    int-to-float v3, v3

    sub-float v7, v2, v3

    .line 407
    move-object v2, v11

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;-><init>(IFFFF)V

    aput-object v11, v10, v1

    .line 414
    iget v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    .line 415
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->addChangedPointer(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V

    .line 416
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->extractAllPointersData()V

    .line 418
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchEvent()V

    .line 419
    return-void
.end method

.method private final dispatchTouchMoveEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 445
    const/4 v0, 0x2

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->touchEventType:I

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 447
    .local v0, "offsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 448
    .local v1, "offsetY":F
    const/4 v2, 0x0

    .line 450
    .local v2, "pointersAdded":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_5

    .line 451
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 452
    .local v5, "pointerId":I
    iget-object v6, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    aget-object v6, v6, v5

    if-nez v6, :cond_0

    goto :goto_3

    .line 454
    .local v6, "pointer":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    :cond_0
    invoke-virtual {v6}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getX()F

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    cmpg-float v7, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->getY()F

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    cmpg-float v7, v7, v10

    if-nez v7, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    if-nez v7, :cond_4

    .line 455
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->setX(F)V

    .line 456
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->setY(F)V

    .line 457
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v10, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    aget v8, v10, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->setAbsoluteX(F)V

    .line 458
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v7, v1

    iget-object v8, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    aget v8, v8, v9

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;->setAbsoluteY(F)V

    .line 460
    invoke-direct {p0, v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->addChangedPointer(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    .line 450
    .end local v5    # "pointerId":I
    .end local v6    # "pointer":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    .end local v3    # "i":I
    :cond_5
    if-lez v2, :cond_6

    .line 469
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->extractAllPointersData()V

    .line 470
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchEvent()V

    .line 472
    :cond_6
    return-void
.end method

.method private final dispatchTouchUpEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    .line 422
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->extractAllPointersData()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 424
    const/4 v1, 0x3

    iput v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->touchEventType:I

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 426
    .local v1, "pointerId":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v8, v2, v3

    .line 427
    .local v8, "offsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v9, v2, v3

    .line 429
    .local v9, "offsetY":F
    iget-object v10, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    new-instance v11, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    .line 430
    nop

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v8

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    int-to-float v3, v3

    sub-float v6, v2, v3

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v9

    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    int-to-float v3, v3

    sub-float v7, v2, v3

    .line 429
    move-object v2, v11

    move v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;-><init>(IFFFF)V

    aput-object v11, v10, v1

    .line 436
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    aget-object v2, v2, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->addChangedPointer(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V

    .line 437
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    aput-object v0, v2, v1

    .line 438
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    .line 440
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchEvent()V

    .line 441
    return-void
.end method

.method private final extractAllPointersData()V
    .locals 4

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 489
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 490
    .local v3, "pointerData":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    if-eqz v3, :cond_0

    .line 491
    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->addPointerToAll(Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;)V

    .line 489
    .end local v3    # "pointerData":Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_1
    return-void
.end method

.method private final findNextLocalPointerId()I
    .locals 3

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "localPointerId":I
    :goto_0
    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    if-ge v0, v1, :cond_3

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 205
    goto :goto_2

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 210
    return v0

    .line 212
    :cond_2
    nop

    .end local v1    # "i":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_3
    return v0
.end method

.method private final getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 192
    nop

    .line 193
    instance-of v0, p1, Lcom/facebook/react/bridge/ReactContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 195
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0
.end method

.method private final isButtonInConfig(I)Z
    .locals 3
    .param p1, "clickedButton"    # I

    .line 702
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->mouseButton:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 703
    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 706
    :cond_1
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->mouseButton:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private final moveToState(I)V
    .locals 3
    .param p1, "newState"    # I

    .line 550
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 551
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    if-ne v0, p1, :cond_0

    .line 552
    return-void

    .line 556
    :cond_0
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 557
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancelPointers()V

    .line 560
    :cond_2
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    .line 561
    .local v0, "oldState":I
    iput p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    .line 562
    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 566
    sget-short v1, Lcom/swmansion/gesturehandler/core/GestureHandler;->nextEventCoalescingKey:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    sput-short v2, Lcom/swmansion/gesturehandler/core/GestureHandler;->nextEventCoalescingKey:S

    iput-short v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->eventCoalescingKey:S

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->onHandlerStateChange(Lcom/swmansion/gesturehandler/core/GestureHandler;II)V

    .line 569
    invoke-virtual {p0, p1, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onStateChange(II)V

    .line 570
    return-void
.end method

.method private final needAdapt(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 233
    return v2

    .line 236
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 237
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v3, v3, v0

    .line 238
    .local v3, "trackedPointer":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_1

    .line 239
    return v2

    .line 236
    .end local v3    # "trackedPointer":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final setEnabled$lambda$3$lambda$2(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 1
    .param p0, "$this_applySelf"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    const-string v0, "$this_applySelf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    return-void
.end method

.method private final setPointerType(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 776
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 780
    const/4 v1, 0x3

    goto :goto_0

    .line 779
    :pswitch_0
    const/4 v1, 0x2

    goto :goto_0

    .line 778
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 777
    :pswitch_2
    const/4 v1, 0x0

    .line 776
    :goto_0
    iput v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerType:I

    .line 782
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final activate()V
    .locals 1

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    return-void
.end method

.method public activate(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 670
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->manualActivation:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 671
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->moveToState(I)V

    .line 673
    :cond_2
    return-void
.end method

.method protected final applySelf(Lkotlin/jvm/functions/Function1;)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TConcreteGestureHandlerT;",
            "Lkotlin/Unit;",
            ">;)TConcreteGestureHandlerT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$f$applySelf":I
    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v1

    move-object v2, v1

    .line 873
    .local v2, "$this$applySelf_u24lambda_u240":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v3, 0x0

    .line 79
    .local v3, "$i$a$-apply-GestureHandler$applySelf$1":I
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "$this$applySelf_u24lambda_u240":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v3    # "$i$a$-apply-GestureHandler$applySelf$1":I
    return-object v1
.end method

.method public final begin()V
    .locals 1

    .line 676
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    if-nez v0, :cond_0

    .line 677
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->moveToState(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 2

    .line 655
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting:Z

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onCancel()V

    .line 657
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->moveToState(I)V

    .line 659
    :cond_1
    return-void
.end method

.method public final consumeAllTouchesPayload()Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 545
    .local v0, "result":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 546
    return-object v0
.end method

.method public final consumeChangedTouchesPayload()Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 539
    .local v0, "result":Lcom/facebook/react/bridge/WritableArray;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    .line 540
    return-object v0
.end method

.method public dispatchHandlerUpdate(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->onTouchEventListener:Lcom/swmansion/gesturehandler/core/OnTouchEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->self()Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/swmansion/gesturehandler/core/OnTouchEventListener;->onHandlerUpdate(Lcom/swmansion/gesturehandler/core/GestureHandler;Landroid/view/MotionEvent;)V

    .line 93
    :cond_0
    return-void
.end method

.method public dispatchStateChange(II)V
    .locals 2
    .param p1, "newState"    # I
    .param p2, "prevState"    # I

    .line 88
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->onTouchEventListener:Lcom/swmansion/gesturehandler/core/OnTouchEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->self()Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/swmansion/gesturehandler/core/OnTouchEventListener;->onStateChange(Lcom/swmansion/gesturehandler/core/GestureHandler;II)V

    .line 89
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->onTouchEventListener:Lcom/swmansion/gesturehandler/core/OnTouchEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->self()Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/swmansion/gesturehandler/core/OnTouchEventListener;->onTouchEvent(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final end()V
    .locals 2

    .line 682
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 683
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->moveToState(I)V

    .line 685
    :cond_1
    return-void
.end method

.method public final fail()V
    .locals 2

    .line 662
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 663
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->moveToState(I)V

    .line 665
    :cond_1
    return-void
.end method

.method public final getActionType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->actionType:I

    return v0
.end method

.method public final getActivationIndex()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->activationIndex:I

    return v0
.end method

.method public final getAllTouchesPayload()Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->allTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    return-object v0
.end method

.method public final getChangedTouchesPayload()Lcom/facebook/react/bridge/WritableArray;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->changedTouchesPayload:Lcom/facebook/react/bridge/WritableArray;

    return-object v0
.end method

.method public final getEventCoalescingKey()S
    .locals 1

    .line 53
    iget-short v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->eventCoalescingKey:S

    return v0
.end method

.method public final getLastAbsolutePositionX()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionX:F

    return v0
.end method

.method public final getLastAbsolutePositionY()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionY:F

    return v0
.end method

.method public final getLastPositionInWindowX()F
    .locals 3

    .line 800
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastEventOffsetX:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getLastPositionInWindowY()F
    .locals 3

    .line 802
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastEventOffsetY:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getLastRelativePositionX()F
    .locals 1

    .line 795
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionX:F

    return v0
.end method

.method public final getLastRelativePositionY()F
    .locals 1

    .line 797
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionY:F

    return v0
.end method

.method protected final getMouseButton()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->mouseButton:I

    return v0
.end method

.method public final getNeedsPointerData()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->needsPointerData:Z

    return v0
.end method

.method public final getNumberOfPointers()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->numberOfPointers:I

    return v0
.end method

.method protected final getOrchestrator()Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    return-object v0
.end method

.method public final getPointerType()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->pointerType:I

    return v0
.end method

.method public final getShouldResetProgress()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldResetProgress:Z

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    return v0
.end method

.method public final getTag()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->tag:I

    return v0
.end method

.method public final getTouchEventType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->touchEventType:I

    return v0
.end method

.method public final getTrackedPointersCount()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    return-object v0
.end method

.method public final getX()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->y:F

    return v0
.end method

.method public final handle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "transformedEvent"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "transformedEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    if-eqz v0, :cond_b

    .line 343
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    .line 344
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 345
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_b

    .line 346
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 352
    :cond_0
    sget-boolean v0, Lcom/swmansion/gesturehandler/BuildConfig;->DEBUG:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 353
    new-array v0, v3, [Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-direct {p0, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_0

    .line 355
    :cond_1
    nop

    .line 356
    :try_start_0
    new-array v0, v3, [Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-direct {p0, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lcom/swmansion/gesturehandler/core/GestureHandler$AdaptEventException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    nop

    .line 352
    :goto_0
    aget-object v2, v0, v2

    .local v2, "adaptedTransformedEvent":Landroid/view/MotionEvent;
    aget-object v0, v0, v1

    .line 363
    .local v0, "adaptedSourceEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->x:F

    .line 364
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->y:F

    .line 365
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    iput v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->numberOfPointers:I

    .line 366
    iget-object v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    iget v5, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->x:F

    iget v6, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->y:F

    invoke-virtual {p0, v4, v5, v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v4

    iput-boolean v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds:Z

    .line 367
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldCancelWhenOutside:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds:Z

    if-nez v4, :cond_4

    .line 368
    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    goto :goto_1

    .line 370
    :cond_2
    iget v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    if-ne v1, v3, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->fail()V

    .line 373
    :cond_3
    :goto_1
    return-void

    .line 375
    :cond_4
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, v2, v1}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v3

    iput v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionX:F

    .line 376
    sget-object v3, Lcom/swmansion/gesturehandler/core/GestureUtils;->INSTANCE:Lcom/swmansion/gesturehandler/core/GestureUtils;

    invoke-virtual {v3, v2, v1}, Lcom/swmansion/gesturehandler/core/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v1

    iput v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastAbsolutePositionY:F

    .line 377
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastEventOffsetX:F

    .line 378
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->lastEventOffsetY:F

    .line 380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x7

    const/16 v4, 0x9

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 381
    :cond_5
    invoke-direct {p0, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setPointerType(Landroid/view/MotionEvent;)V

    .line 384
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    goto :goto_2

    .line 390
    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 388
    :cond_8
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onHandleHover(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 392
    :goto_3
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 393
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    :cond_9
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 396
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 398
    :cond_a
    return-void

    .line 357
    .end local v0    # "adaptedSourceEvent":Landroid/view/MotionEvent;
    .end local v2    # "adaptedTransformedEvent":Landroid/view/MotionEvent;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Lcom/swmansion/gesturehandler/core/GestureHandler$AdaptEventException;
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->fail()V

    .line 359
    return-void

    .line 348
    .end local v0    # "e":Lcom/swmansion/gesturehandler/core/GestureHandler$AdaptEventException;
    :cond_b
    :goto_4
    return-void
.end method

.method public final hasCommonPointers(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 4
    .param p1, "other"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v2, v2, v0

    if-eq v2, v3, :cond_0

    .line 112
    const/4 v1, 0x1

    return v1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isActive()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive:Z

    return v0
.end method

.method public final isAwaiting()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting:Z

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    return v0
.end method

.method public final isWithinBounds()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds:Z

    return v0
.end method

.method public final isWithinBounds(Landroid/view/View;FF)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "posX"    # F
    .param p3, "posY"    # F

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "left":F
    const/4 v1, 0x0

    .line 615
    .local v1, "top":F
    const/4 v2, 0x0

    .local v2, "right":F
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 616
    const/4 v3, 0x0

    .local v3, "bottom":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v3, v4

    .line 617
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    .local v5, "hitSlop":[F
    const/4 v8, 0x0

    .line 618
    .local v8, "$i$a$-let-GestureHandler$isWithinBounds$1":I
    aget v9, v5, v7

    .line 619
    .local v9, "padLeft":F
    aget v10, v5, v6

    .line 620
    .local v10, "padTop":F
    const/4 v11, 0x2

    aget v11, v5, v11

    .line 621
    .local v11, "padRight":F
    const/4 v12, 0x3

    aget v12, v5, v12

    .line 622
    .local v12, "padBottom":F
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v9}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 623
    sub-float/2addr v0, v9

    .line 625
    :cond_0
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v10}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 626
    sub-float/2addr v1, v10

    .line 628
    :cond_1
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v11}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 629
    add-float/2addr v2, v11

    .line 631
    :cond_2
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v12}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 632
    add-float/2addr v3, v12

    .line 634
    :cond_3
    const/4 v13, 0x4

    aget v13, v5, v13

    .line 635
    .local v13, "width":F
    const/4 v14, 0x5

    aget v14, v5, v14

    .line 636
    .local v14, "height":F
    sget-object v15, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v15, v13}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 637
    sget-object v15, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v15, v9}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v15

    if-nez v15, :cond_4

    .line 638
    sub-float v0, v2, v13

    goto :goto_0

    .line 639
    :cond_4
    sget-object v15, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v15, v11}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v15

    if-nez v15, :cond_5

    .line 640
    add-float v2, v0, v13

    .line 643
    :cond_5
    :goto_0
    sget-object v15, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v15, v14}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 644
    sget-object v15, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v15, v10}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v15

    if-nez v15, :cond_6

    .line 645
    sub-float v1, v3, v14

    goto :goto_1

    .line 646
    :cond_6
    sget-object v15, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v15, v12}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v15

    if-nez v15, :cond_7

    .line 647
    add-float v3, v1, v14

    .line 650
    :cond_7
    :goto_1
    nop

    .line 617
    .end local v5    # "hitSlop":[F
    .end local v8    # "$i$a$-let-GestureHandler$isWithinBounds$1":I
    .end local v9    # "padLeft":F
    .end local v10    # "padTop":F
    .end local v11    # "padRight":F
    .end local v12    # "padBottom":F
    .end local v13    # "width":F
    .end local v14    # "height":F
    nop

    .line 651
    :cond_8
    cmpg-float v5, v0, p2

    if-gtz v5, :cond_9

    cmpg-float v5, p2, v2

    if-gtz v5, :cond_9

    move v5, v6

    goto :goto_2

    :cond_9
    move v5, v7

    :goto_2
    if-eqz v5, :cond_b

    cmpg-float v5, v1, p3

    if-gtz v5, :cond_a

    cmpg-float v5, p3, v3

    if-gtz v5, :cond_a

    move v5, v6

    goto :goto_3

    :cond_a
    move v5, v7

    :goto_3
    if-eqz v5, :cond_b

    goto :goto_4

    :cond_b
    move v6, v7

    :goto_4
    return v6
.end method

.method protected onCancel()V
    .locals 0

    .line 699
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->moveToState(I)V

    .line 693
    return-void
.end method

.method protected onHandleHover(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method protected onPrepare()V
    .locals 0

    .line 189
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 698
    return-void
.end method

.method protected onStateChange(II)V
    .locals 0
    .param p1, "newState"    # I
    .param p2, "previousState"    # I

    .line 697
    return-void
.end method

.method public final prepare(Landroid/view/View;Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "orchestrator"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    .line 171
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    const/4 v3, -0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 173
    iput v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    .line 174
    iput v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    .line 175
    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    .line 176
    iput-object p2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    .line 178
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    const v0, 0x1020002

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "content":Landroid/view/View;
    :cond_2
    if-eqz v0, :cond_3

    .line 180
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_2

    .line 182
    :cond_3
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    aput v2, v3, v2

    .line 183
    iget-object v3, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->windowOffset:[I

    aput v2, v3, v1

    .line 186
    :goto_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onPrepare()V

    .line 187
    return-void

    .line 873
    .end local v0    # "content":Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    .line 171
    .local v0, "$i$a$-check-GestureHandler$prepare$1":I
    nop

    .end local v0    # "$i$a$-check-GestureHandler$prepare$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already prepared or hasn\'t been reset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .locals 7

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    .line 758
    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    .line 759
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    .line 761
    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersCount:I

    .line 762
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointers:[Lcom/swmansion/gesturehandler/core/GestureHandler$PointerData;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 763
    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->touchEventType:I

    .line 764
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->onReset()V

    .line 765
    return-void
.end method

.method public resetConfig()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->needsPointerData:Z

    .line 103
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->manualActivation:Z

    .line 104
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldCancelWhenOutside:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    .line 107
    return-void
.end method

.method public resetProgress()V
    .locals 0

    .line 689
    return-void
.end method

.method protected final self()Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 76
    const-string v0, "null cannot be cast to non-null type ConcreteGestureHandlerT of com.swmansion.gesturehandler.core.GestureHandler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/GestureHandler;

    return-object v0
.end method

.method public final setActionType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 39
    iput p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->actionType:I

    return-void
.end method

.method public final setActivationIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 82
    iput p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->activationIndex:I

    return-void
.end method

.method public final setActive(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isActive:Z

    return-void
.end method

.method public final setAwaiting(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isAwaiting:Z

    return-void
.end method

.method public final setEnabled(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 8
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 121
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 876
    .local v1, "$i$f$applySelf":I
    invoke-static {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v2

    move-object v3, v2

    .line 877
    .local v3, "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v4, 0x0

    .line 876
    .local v4, "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    move-object v5, v3

    .local v5, "$this$setEnabled_u24lambda_u243":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 125
    .local v6, "$i$a$-applySelf-GestureHandler$setEnabled$1":I
    iget-object v7, v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    if-eq v7, p1, :cond_0

    .line 128
    new-instance v7, Lcom/swmansion/gesturehandler/core/GestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/swmansion/gesturehandler/core/GestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    invoke-static {v7}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 130
    :cond_0
    iput-boolean p1, v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    .line 131
    nop

    .line 876
    .end local v5    # "$this$setEnabled_u24lambda_u243":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-applySelf-GestureHandler$setEnabled$1":I
    nop

    .line 131
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$f$applySelf":I
    .end local v3    # "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v4    # "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    return-object v2
.end method

.method public final setHitSlop(F)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 7
    .param p1, "padding"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 160
    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setHitSlop(FFFFFF)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v0

    return-object v0
.end method

.method public final setHitSlop(FFFFFF)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 17
    .param p1, "leftPad"    # F
    .param p2, "topPad"    # F
    .param p3, "rightPad"    # F
    .param p4, "bottomPad"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 143
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p0

    .local v6, "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v7, 0x0

    .line 880
    .local v7, "$i$f$applySelf":I
    invoke-static {v6}, Lcom/swmansion/gesturehandler/core/GestureHandler;->access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v8

    move-object v9, v8

    .line 881
    .local v9, "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v10, 0x0

    .line 880
    .local v10, "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    move-object v11, v9

    .local v11, "$this$setHitSlop_u24lambda_u249":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v12, 0x0

    .line 144
    .local v12, "$i$a$-applySelf-GestureHandler$setHitSlop$1":I
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    if-nez v13, :cond_0

    .line 145
    const/4 v13, 0x6

    new-array v13, v13, [F

    iput-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    .line 147
    :cond_0
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput v0, v13, v14

    .line 148
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput v1, v13, v15

    .line 149
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x2

    aput v2, v13, v16

    .line 150
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x3

    aput v3, v13, v16

    .line 151
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x4

    aput v4, v13, v16

    .line 152
    iget-object v13, v11, Lcom/swmansion/gesturehandler/core/GestureHandler;->hitSlop:[F

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v16, 0x5

    aput v5, v13, v16

    .line 153
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v4}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
    move v13, v14

    goto :goto_1

    :cond_2
    :goto_0
    move v13, v15

    :goto_1
    if-eqz v13, :cond_c

    .line 154
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v4}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v0}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-nez v13, :cond_4

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move v13, v14

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v15

    :goto_3
    if-eqz v13, :cond_b

    .line 155
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v5}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v1}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    move v13, v14

    goto :goto_5

    :cond_6
    :goto_4
    move v13, v15

    :goto_5
    if-eqz v13, :cond_a

    .line 156
    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v5}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-nez v13, :cond_7

    sget-object v13, Lcom/swmansion/gesturehandler/core/GestureHandler;->Companion:Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;

    invoke-static {v13, v1}, Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;->access$hitSlopSet(Lcom/swmansion/gesturehandler/core/GestureHandler$Companion;F)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_7
    move v14, v15

    :cond_8
    if-eqz v14, :cond_9

    .line 157
    nop

    .line 880
    .end local v11    # "$this$setHitSlop_u24lambda_u249":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v12    # "$i$a$-applySelf-GestureHandler$setHitSlop$1":I
    nop

    .line 157
    .end local v6    # "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v7    # "$i$f$applySelf":I
    .end local v9    # "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v10    # "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    return-object v8

    .line 873
    .restart local v6    # "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .restart local v7    # "$i$f$applySelf":I
    .restart local v9    # "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .restart local v10    # "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    .restart local v11    # "$this$setHitSlop_u24lambda_u249":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .restart local v12    # "$i$a$-applySelf-GestureHandler$setHitSlop$1":I
    :cond_9
    const/4 v8, 0x0

    .line 156
    .local v8, "$i$a$-require-GestureHandler$setHitSlop$1$4":I
    nop

    .end local v8    # "$i$a$-require-GestureHandler$setHitSlop$1$4":I
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v13, "When height is set one of top or bottom pads need to be defined"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 873
    :cond_a
    const/4 v8, 0x0

    .line 155
    .local v8, "$i$a$-require-GestureHandler$setHitSlop$1$3":I
    nop

    .end local v8    # "$i$a$-require-GestureHandler$setHitSlop$1$3":I
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v13, "Cannot have all of top, bottom and height defined"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 873
    :cond_b
    const/4 v8, 0x0

    .line 154
    .local v8, "$i$a$-require-GestureHandler$setHitSlop$1$2":I
    nop

    .end local v8    # "$i$a$-require-GestureHandler$setHitSlop$1$2":I
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v13, "When width is set one of left or right pads need to be defined"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 873
    :cond_c
    const/4 v8, 0x0

    .line 153
    .local v8, "$i$a$-require-GestureHandler$setHitSlop$1$1":I
    nop

    .end local v8    # "$i$a$-require-GestureHandler$setHitSlop$1$1":I
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v13, "Cannot have all of left, right and width defined"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public final setInteractionController(Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 7
    .param p1, "controller"    # Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;",
            ")TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 164
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 882
    .local v1, "$i$f$applySelf":I
    invoke-static {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v2

    move-object v3, v2

    .line 883
    .local v3, "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v4, 0x0

    .line 882
    .local v4, "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    move-object v5, v3

    .local v5, "$this$setInteractionController_u24lambda_u2410":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 164
    .local v6, "$i$a$-applySelf-GestureHandler$setInteractionController$1":I
    iput-object p1, v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->interactionController:Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

    .line 882
    .end local v5    # "$this$setInteractionController_u24lambda_u2410":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-applySelf-GestureHandler$setInteractionController$1":I
    nop

    .line 164
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$f$applySelf":I
    .end local v3    # "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v4    # "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    return-object v2
.end method

.method public final setManualActivation(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 7
    .param p1, "manualActivation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 134
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 878
    .local v1, "$i$f$applySelf":I
    invoke-static {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v2

    move-object v3, v2

    .line 879
    .local v3, "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v4, 0x0

    .line 878
    .local v4, "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    move-object v5, v3

    .local v5, "$this$setManualActivation_u24lambda_u244":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 134
    .local v6, "$i$a$-applySelf-GestureHandler$setManualActivation$1":I
    iput-boolean p1, v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->manualActivation:Z

    .line 878
    .end local v5    # "$this$setManualActivation_u24lambda_u244":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-applySelf-GestureHandler$setManualActivation$1":I
    nop

    .line 134
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$f$applySelf":I
    .end local v3    # "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v4    # "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    return-object v2
.end method

.method public final setMouseButton(I)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 2
    .param p1, "mouseButton"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TConcreteGestureHandlerT;>;"
        }
    .end annotation

    .line 166
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v0, "$this$setMouseButton_u24lambda_u2411":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 167
    .local v1, "$i$a$-apply-GestureHandler$setMouseButton$1":I
    iput p1, v0, Lcom/swmansion/gesturehandler/core/GestureHandler;->mouseButton:I

    .line 168
    nop

    .line 166
    .end local v0    # "$this$setMouseButton_u24lambda_u2411":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$a$-apply-GestureHandler$setMouseButton$1":I
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 168
    return-object v0
.end method

.method protected final setMouseButton(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 73
    iput p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->mouseButton:I

    return-void
.end method

.method public final setNeedsPointerData(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 50
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->needsPointerData:Z

    return-void
.end method

.method public final setOnTouchEventListener(Lcom/swmansion/gesturehandler/core/OnTouchEventListener;)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 0
    .param p1, "listener"    # Lcom/swmansion/gesturehandler/core/OnTouchEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/OnTouchEventListener;",
            ")",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;"
        }
    .end annotation

    .line 785
    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->onTouchEventListener:Lcom/swmansion/gesturehandler/core/OnTouchEventListener;

    .line 786
    return-object p0
.end method

.method protected final setOrchestrator(Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    .line 67
    iput-object p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    return-void
.end method

.method public final setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/core/GestureHandler;
    .locals 7
    .param p1, "shouldCancelWhenOutside"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TConcreteGestureHandlerT;"
        }
    .end annotation

    .line 119
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 874
    .local v1, "$i$f$applySelf":I
    invoke-static {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->access$self(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v2

    move-object v3, v2

    .line 875
    .local v3, "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v4, 0x0

    .line 874
    .local v4, "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    move-object v5, v3

    .local v5, "$this$setShouldCancelWhenOutside_u24lambda_u241":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v6, 0x0

    .line 119
    .local v6, "$i$a$-applySelf-GestureHandler$setShouldCancelWhenOutside$1":I
    iput-boolean p1, v5, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldCancelWhenOutside:Z

    .line 874
    .end local v5    # "$this$setShouldCancelWhenOutside_u24lambda_u241":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v6    # "$i$a$-applySelf-GestureHandler$setShouldCancelWhenOutside$1":I
    nop

    .line 119
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$f$applySelf":I
    .end local v3    # "$this$applySelf_u24lambda_u240$iv":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v4    # "$i$a$-apply-GestureHandler$applySelf$1$iv":I
    return-object v2
.end method

.method public final setShouldResetProgress(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->shouldResetProgress:Z

    return-void
.end method

.method public final setTag(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 26
    iput p1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->tag:I

    return-void
.end method

.method protected final shouldActivateWithMouse(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "sourceEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    move-object v0, p1

    .local v0, "$this$shouldActivateWithMouse_u24lambda_u2416":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    .line 715
    .local v1, "$i$a$-with-GestureHandler$shouldActivateWithMouse$1":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    .line 717
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isButtonInConfig(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 723
    return v2

    .line 727
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/swmansion/gesturehandler/core/GestureHandler;->isButtonInConfig(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 728
    return v2

    .line 718
    :cond_2
    :goto_0
    return v2

    .line 730
    :cond_3
    nop

    .line 736
    :cond_4
    nop

    .line 713
    .end local v0    # "$this$shouldActivateWithMouse_u24lambda_u2416":Landroid/view/MotionEvent;
    .end local v1    # "$i$a$-with-GestureHandler$shouldActivateWithMouse$1":I
    nop

    .line 738
    return v5
.end method

.method public shouldBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 606
    return v0

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->interactionController:Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    if-ne p1, p0, :cond_0

    .line 598
    const/4 v0, 0x1

    return v0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->interactionController:Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 582
    return v0

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->interactionController:Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;->shouldRequireHandlerToWaitForFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 590
    return v0

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->interactionController:Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerInteractionController;->shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public final startTrackingPointer(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .line 218
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->findNextLocalPointerId()I

    move-result v1

    aput v1, v0, p1

    .line 220
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    .line 222
    :cond_0
    return-void
.end method

.method public final stopTrackingPointer(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .line 225
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointerIDs:[I

    aput v1, v0, p1

    .line 227
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    .line 229
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 790
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "viewString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->tag:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final transformPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->orchestrator:Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/swmansion/gesturehandler/core/GestureHandlerOrchestrator;->transformPointToViewCoords(Landroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/swmansion/gesturehandler/core/GestureHandler;

    .local v0, "$this$transformPoint_u24lambda_u2417":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 751
    .local v1, "$i$a$-run-GestureHandler$transformPoint$1":I
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 752
    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 753
    nop

    .line 750
    .end local v0    # "$this$transformPoint_u24lambda_u2417":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$a$-run-GestureHandler$transformPoint$1":I
    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public final updatePointerData(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "sourceEvent"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 482
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchMoveEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 479
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchMoveEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchUpEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 476
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchDownEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->dispatchTouchMoveEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 484
    :cond_4
    :goto_2
    return-void
.end method

.method public final wantEvents()Z
    .locals 3

    .line 573
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 574
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 575
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 576
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->state:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 577
    iget v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->trackedPointersIDsCount:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 573
    :goto_0
    return v1
.end method

.method public final withMarkedAsInBounds(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "closure"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds:Z

    .line 769
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/core/GestureHandler;->isWithinBounds:Z

    .line 771
    return-void
.end method
