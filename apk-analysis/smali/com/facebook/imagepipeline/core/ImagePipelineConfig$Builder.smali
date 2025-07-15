.class public final Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipelineConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipelineConfig.kt\ncom/facebook/imagepipeline/core/ImagePipelineConfig$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,571:1\n1#2:572\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008.\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u0001J\u0007\u0010\u009f\u0001\u001a\u00020PJ\u0007\u0010\u00a0\u0001\u001a\u000204J\u0007\u0010\u00a1\u0001\u001a\u000204J\u001d\u0010\u00a2\u0001\u001a\u00020\u00002\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\nJ\u0017\u0010\u00a3\u0001\u001a\u00020\u00002\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010J\u0011\u0010\u00a4\u0001\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014J\u0017\u0010\u00a5\u0001\u001a\u00020\u00002\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018J\u0012\u0010\u00a6\u0001\u001a\u00020\u00002\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u001dJ\u0012\u0010\u00a8\u0001\u001a\u00020\u00002\t\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0006J\u0011\u0010\u00aa\u0001\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010!J\u0011\u0010\u00ab\u0001\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010%J\u000f\u0010\u00ac\u0001\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)J\u0017\u0010\u00ad\u0001\u001a\u00020\u00002\u000e\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/J\u000f\u0010\u00ae\u0001\u001a\u00020\u00002\u0006\u00105\u001a\u000204J\u0012\u0010\u00af\u0001\u001a\u00020\u00002\u0007\u0010\u00b0\u0001\u001a\u000204H\u0007J\u000f\u0010\u00b1\u0001\u001a\u00020\u00002\u0006\u00109\u001a\u000208J\u001b\u0010\u00b2\u0001\u001a\u00020\u00002\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>0<J\u0017\u0010\u00b3\u0001\u001a\u00020\u00002\u000e\u0010B\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u0018J\u001d\u0010\u00b4\u0001\u001a\u00020\u00002\u0014\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020D\u0018\u00010\nJ\u0017\u0010\u00b5\u0001\u001a\u00020\u00002\u000e\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018J\u0012\u0010\u00b6\u0001\u001a\u00020\u00002\t\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u001dJ\u0013\u0010\u00b7\u0001\u001a\u00020\u00002\n\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u0097\u0001J\u0011\u0010\u00b9\u0001\u001a\u00020\u00002\u0008\u0010L\u001a\u0004\u0018\u00010KJ\u0011\u0010\u00ba\u0001\u001a\u00020\u00002\u0008\u0010T\u001a\u0004\u0018\u00010SJ\u0010\u0010\u00bb\u0001\u001a\u00020\u00002\u0007\u0010\u00bc\u0001\u001a\u00020WJ\u0011\u0010\u00bd\u0001\u001a\u00020\u00002\u0008\u0010\\\u001a\u0004\u0018\u00010[J\u0011\u0010\u00be\u0001\u001a\u00020\u00002\u0008\u0010`\u001a\u0004\u0018\u00010_J\u0011\u0010\u00bf\u0001\u001a\u00020\u00002\u0008\u0010d\u001a\u0004\u0018\u00010cJ\u0011\u0010\u00c0\u0001\u001a\u00020\u00002\u0008\u0010h\u001a\u0004\u0018\u00010gJ\u000e\u0010p\u001a\u00020\u00002\u0006\u0010k\u001a\u00020WJ\u0017\u0010\u00c1\u0001\u001a\u00020\u00002\u000e\u0010s\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u0018J\u0011\u0010\u00c2\u0001\u001a\u00020\u00002\u0008\u0010t\u001a\u0004\u0018\u00010>J\u000e\u0010z\u001a\u00020\u00002\u0006\u0010w\u001a\u00020WJ\u0011\u0010\u00c3\u0001\u001a\u00020\u00002\u0008\u0010|\u001a\u0004\u0018\u00010{J\u0016\u0010\u00c4\u0001\u001a\u00020\u00002\r\u0010\u0080\u0001\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u007fJ\u0013\u0010\u00c5\u0001\u001a\u00020\u00002\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u0001J\u0013\u0010\u00c6\u0001\u001a\u00020\u00002\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001J\u0013\u0010\u00c7\u0001\u001a\u00020\u00002\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u0001J\u0019\u0010\u00c8\u0001\u001a\u00020\u00002\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u008f\u0001\u0018\u00010/J\u0019\u0010\u00c9\u0001\u001a\u00020\u00002\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0092\u0001\u0018\u00010/J\u0010\u0010\u00ca\u0001\u001a\u00020\u00002\u0007\u0010\u0095\u0001\u001a\u000204J\u0012\u0010\u00cb\u0001\u001a\u00020\u00002\t\u0010\u009b\u0001\u001a\u0004\u0018\u00010>R\"\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR:\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR.\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00102\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R.\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\"\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010\u0005\u001a\u0004\u0018\u00010!@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\"\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0005\u001a\u0004\u0018\u00010%@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001e\u0010*\u001a\u00020)2\u0006\u0010\u0005\u001a\u00020)@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R.\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/2\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u001e\u00105\u001a\u0002042\u0006\u0010\u0005\u001a\u000204@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u001e\u00109\u001a\u0002082\u0006\u0010\u0005\u001a\u000208@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R:\u0010?\u001a\u0010\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>\u0018\u00010<2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020>\u0018\u00010<@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010AR.\u0010B\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u00182\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010\u001cR:\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020D\u0018\u00010\n2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020D\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010\u000fR.\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010\u001cR\"\u0010I\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010 R\"\u0010L\u001a\u0004\u0018\u00010K2\u0008\u0010\u0005\u001a\u0004\u0018\u00010K@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010NR\u0011\u0010O\u001a\u00020P\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010RR\"\u0010T\u001a\u0004\u0018\u00010S2\u0008\u0010\u0005\u001a\u0004\u0018\u00010S@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010VR\u001e\u0010X\u001a\u00020W2\u0006\u0010\u0005\u001a\u00020W@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010ZR\"\u0010\\\u001a\u0004\u0018\u00010[2\u0008\u0010\u0005\u001a\u0004\u0018\u00010[@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010^R\"\u0010`\u001a\u0004\u0018\u00010_2\u0008\u0010\u0005\u001a\u0004\u0018\u00010_@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010bR\"\u0010d\u001a\u0004\u0018\u00010c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010fR\"\u0010h\u001a\u0004\u0018\u00010g2\u0008\u0010\u0005\u001a\u0004\u0018\u00010g@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u0010jR$\u0010k\u001a\u0004\u0018\u00010WX\u0086\u000e\u00a2\u0006\u0016\n\u0002\u0010r\u0012\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR.\u0010s\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u00182\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u000204\u0018\u00010\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008s\u0010\u001cR\"\u0010t\u001a\u0004\u0018\u00010>2\u0008\u0010\u0005\u001a\u0004\u0018\u00010>@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008u\u0010vR$\u0010w\u001a\u0004\u0018\u00010WX\u0086\u000e\u00a2\u0006\u0016\n\u0002\u0010r\u0012\u0004\u0008x\u0010m\u001a\u0004\u0008y\u0010o\"\u0004\u0008z\u0010qR\"\u0010|\u001a\u0004\u0018\u00010{2\u0008\u0010\u0005\u001a\u0004\u0018\u00010{@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008}\u0010~R-\u0010\u0080\u0001\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u007f2\u000c\u0010\u0005\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u007f@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\'\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u00012\t\u0010\u0005\u001a\u0005\u0018\u00010\u0083\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\'\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u00012\t\u0010\u0005\u001a\u0005\u0018\u00010\u0087\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\'\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00012\t\u0010\u0005\u001a\u0005\u0018\u00010\u008b\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R2\u0010\u0090\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u008f\u0001\u0018\u00010/2\u000f\u0010\u0005\u001a\u000b\u0012\u0005\u0012\u00030\u008f\u0001\u0018\u00010/@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0091\u0001\u00103R2\u0010\u0093\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0092\u0001\u0018\u00010/2\u000f\u0010\u0005\u001a\u000b\u0012\u0005\u0012\u00030\u0092\u0001\u0018\u00010/@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0094\u0001\u00103R \u0010\u0095\u0001\u001a\u0002042\u0006\u0010\u0005\u001a\u000204@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0096\u0001\u00107R\'\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0097\u00012\t\u0010\u0005\u001a\u0005\u0018\u00010\u0097\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R$\u0010\u009b\u0001\u001a\u0004\u0018\u00010>2\u0008\u0010\u0005\u001a\u0004\u0018\u00010>@BX\u0086\u000e\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u009c\u0001\u0010v\u00a8\u0006\u00cc\u0001"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "<set-?>",
        "Landroid/graphics/Bitmap$Config;",
        "bitmapConfig",
        "getBitmapConfig",
        "()Landroid/graphics/Bitmap$Config;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "bitmapMemoryCache",
        "getBitmapMemoryCache",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "bitmapMemoryCacheEntryStateObserver",
        "getBitmapMemoryCacheEntryStateObserver",
        "()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;",
        "Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "bitmapMemoryCacheFactory",
        "getBitmapMemoryCacheFactory",
        "()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;",
        "Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        "bitmapMemoryCacheParamsSupplier",
        "getBitmapMemoryCacheParamsSupplier",
        "()Lcom/facebook/common/internal/Supplier;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "bitmapMemoryCacheTrimStrategy",
        "getBitmapMemoryCacheTrimStrategy",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "cacheKeyFactory",
        "getCacheKeyFactory",
        "()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "Lcom/facebook/callercontext/CallerContextVerifier;",
        "callerContextVerifier",
        "getCallerContextVerifier",
        "()Lcom/facebook/callercontext/CallerContextVerifier;",
        "Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "closeableReferenceLeakTracker",
        "getCloseableReferenceLeakTracker",
        "()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;",
        "getContext",
        "()Landroid/content/Context;",
        "",
        "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
        "customProducerSequenceFactories",
        "getCustomProducerSequenceFactories",
        "()Ljava/util/Set;",
        "",
        "diskCacheEnabled",
        "getDiskCacheEnabled",
        "()Z",
        "Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "downsampleMode",
        "getDownsampleMode",
        "()Lcom/facebook/imagepipeline/core/DownsampleMode;",
        "",
        "",
        "Lcom/facebook/cache/disk/DiskCacheConfig;",
        "dynamicDiskCacheConfigMap",
        "getDynamicDiskCacheConfigMap",
        "()Ljava/util/Map;",
        "enableEncodedImageColorSpaceUsage",
        "getEnableEncodedImageColorSpaceUsage",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "encodedMemoryCache",
        "getEncodedMemoryCache",
        "encodedMemoryCacheParamsSupplier",
        "getEncodedMemoryCacheParamsSupplier",
        "encodedMemoryCacheTrimStrategy",
        "getEncodedMemoryCacheTrimStrategy",
        "Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "executorSupplier",
        "getExecutorSupplier",
        "()Lcom/facebook/imagepipeline/core/ExecutorSupplier;",
        "experimentsBuilder",
        "Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "getExperimentsBuilder",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;",
        "Lcom/facebook/imagepipeline/core/FileCacheFactory;",
        "fileCacheFactory",
        "getFileCacheFactory",
        "()Lcom/facebook/imagepipeline/core/FileCacheFactory;",
        "",
        "httpConnectionTimeout",
        "getHttpConnectionTimeout",
        "()I",
        "Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "imageCacheStatsTracker",
        "getImageCacheStatsTracker",
        "()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "imageDecoder",
        "getImageDecoder",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
        "Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "imageDecoderConfig",
        "getImageDecoderConfig",
        "()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;",
        "Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "imageTranscoderFactory",
        "getImageTranscoderFactory",
        "()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;",
        "imageTranscoderType",
        "getImageTranscoderType$annotations",
        "()V",
        "getImageTranscoderType",
        "()Ljava/lang/Integer;",
        "setImageTranscoderType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "isPrefetchEnabledSupplier",
        "mainDiskCacheConfig",
        "getMainDiskCacheConfig",
        "()Lcom/facebook/cache/disk/DiskCacheConfig;",
        "memoryChunkType",
        "getMemoryChunkType$annotations",
        "getMemoryChunkType",
        "setMemoryChunkType",
        "Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "memoryTrimmableRegistry",
        "getMemoryTrimmableRegistry",
        "()Lcom/facebook/common/memory/MemoryTrimmableRegistry;",
        "Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "networkFetcher",
        "getNetworkFetcher",
        "()Lcom/facebook/imagepipeline/producers/NetworkFetcher;",
        "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "platformBitmapFactory",
        "getPlatformBitmapFactory",
        "()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "poolFactory",
        "getPoolFactory",
        "()Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "progressiveJpegConfig",
        "getProgressiveJpegConfig",
        "()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "requestListener2s",
        "getRequestListener2s",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "requestListeners",
        "getRequestListeners",
        "resizeAndRotateEnabledForNetwork",
        "getResizeAndRotateEnabledForNetwork",
        "Lcom/facebook/common/executors/SerialExecutorService;",
        "serialExecutorServiceForAnimatedImages",
        "getSerialExecutorServiceForAnimatedImages",
        "()Lcom/facebook/common/executors/SerialExecutorService;",
        "smallImageDiskCacheConfig",
        "getSmallImageDiskCacheConfig",
        "build",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfig;",
        "experiment",
        "isDiskCacheEnabled",
        "isDownsampleEnabled",
        "setBitmapMemoryCache",
        "setBitmapMemoryCacheEntryStateObserver",
        "setBitmapMemoryCacheFactory",
        "setBitmapMemoryCacheParamsSupplier",
        "setBitmapMemoryCacheTrimStrategy",
        "trimStrategy",
        "setBitmapsConfig",
        "config",
        "setCacheKeyFactory",
        "setCallerContextVerifier",
        "setCloseableReferenceLeakTracker",
        "setCustomFetchSequenceFactories",
        "setDiskCacheEnabled",
        "setDownsampleEnabled",
        "downsampleEnabled",
        "setDownsampleMode",
        "setDynamicDiskCacheConfigMap",
        "setEnableEncodedImageColorSpaceUsage",
        "setEncodedMemoryCache",
        "setEncodedMemoryCacheParamsSupplier",
        "setEncodedMemoryCacheTrimStrategy",
        "setExecutorServiceForAnimatedImages",
        "serialExecutorService",
        "setExecutorSupplier",
        "setFileCacheFactory",
        "setHttpConnectionTimeout",
        "httpConnectionTimeoutMs",
        "setImageCacheStatsTracker",
        "setImageDecoder",
        "setImageDecoderConfig",
        "setImageTranscoderFactory",
        "setIsPrefetchEnabledSupplier",
        "setMainDiskCacheConfig",
        "setMemoryTrimmableRegistry",
        "setNetworkFetcher",
        "setPlatformBitmapFactory",
        "setPoolFactory",
        "setProgressiveJpegConfig",
        "setRequestListener2s",
        "setRequestListeners",
        "setResizeAndRotateEnabledForNetwork",
        "setSmallImageDiskCacheConfig",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

.field private bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

.field private closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

.field private final context:Landroid/content/Context;

.field private customProducerSequenceFactories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheEnabled:Z

.field private downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

.field private dynamicDiskCacheConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

.field private executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field private fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

.field private httpConnectionTimeout:I

.field private imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

.field private imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

.field private imageTranscoderType:Ljava/lang/Integer;

.field private isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

.field private memoryChunkType:Ljava/lang/Integer;

.field private memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field private progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private requestListener2s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation
.end field

.field private requestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private resizeAndRotateEnabledForNetwork:Z

.field private serialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

.field private smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    sget-object v0, Lcom/facebook/imagepipeline/core/DownsampleMode;->AUTO:Lcom/facebook/imagepipeline/core/DownsampleMode;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->resizeAndRotateEnabledForNetwork:Z

    .line 287
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->httpConnectionTimeout:I

    .line 290
    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 291
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    .line 298
    new-instance v0, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/debug/NoOpCloseableReferenceLeakTracker;-><init>()V

    check-cast v0, Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .line 498
    nop

    .line 500
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->context:Landroid/content/Context;

    .line 501
    nop

    .line 201
    return-void
.end method

.method public static synthetic getImageTranscoderType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMemoryChunkType$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 2

    .line 496
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final experiment()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object v0
.end method

.method public final getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public final getBitmapMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public final getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    return-object v0
.end method

.method public final getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    return-object v0
.end method

.method public final getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public final getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public final getCallerContextVerifier()Lcom/facebook/callercontext/CallerContextVerifier;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    return-object v0
.end method

.method public final getCloseableReferenceLeakTracker()Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCustomProducerSequenceFactories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->customProducerSequenceFactories:Ljava/util/Set;

    return-object v0
.end method

.method public final getDiskCacheEnabled()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    return v0
.end method

.method public final getDownsampleMode()Lcom/facebook/imagepipeline/core/DownsampleMode;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    return-object v0
.end method

.method public final getDynamicDiskCacheConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getEnableEncodedImageColorSpaceUsage()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getEncodedMemoryCache()Lcom/facebook/imagepipeline/cache/MemoryCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public final getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getEncodedMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    return-object v0
.end method

.method public final getExecutorSupplier()Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object v0
.end method

.method public final getExperimentsBuilder()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->experimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object v0
.end method

.method public final getFileCacheFactory()Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object v0
.end method

.method public final getHttpConnectionTimeout()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->httpConnectionTimeout:I

    return v0
.end method

.method public final getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object v0
.end method

.method public final getImageDecoder()Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object v0
.end method

.method public final getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    return-object v0
.end method

.method public final getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    return-object v0
.end method

.method public final getImageTranscoderType()Ljava/lang/Integer;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMainDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public final getMemoryChunkType()Ljava/lang/Integer;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryChunkType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMemoryTrimmableRegistry()Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object v0
.end method

.method public final getNetworkFetcher()Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object v0
.end method

.method public final getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object v0
.end method

.method public final getPoolFactory()Lcom/facebook/imagepipeline/memory/PoolFactory;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object v0
.end method

.method public final getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object v0
.end method

.method public final getRequestListener2s()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListener2s:Ljava/util/Set;

    return-object v0
.end method

.method public final getRequestListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListeners:Ljava/util/Set;

    return-object v0
.end method

.method public final getResizeAndRotateEnabledForNetwork()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->resizeAndRotateEnabledForNetwork:Z

    return v0
.end method

.method public final getSerialExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/SerialExecutorService;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->serialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    return-object v0
.end method

.method public final getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object v0
.end method

.method public final isDiskCacheEnabled()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    return v0
.end method

.method public final isDownsampleEnabled()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    sget-object v1, Lcom/facebook/imagepipeline/core/DownsampleMode;->ALWAYS:Lcom/facebook/imagepipeline/core/DownsampleMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrefetchEnabledSupplier()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final setBitmapMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "bitmapMemoryCache"    # Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 473
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setBitmapMemoryCache_u24lambda_u2434":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 474
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCache$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 475
    nop

    .line 473
    .end local v0    # "$this$setBitmapMemoryCache_u24lambda_u2434":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCache$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 475
    return-object v0
.end method

.method public final setBitmapMemoryCacheEntryStateObserver(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "bitmapMemoryCacheEntryStateObserver"    # Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 326
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setBitmapMemoryCacheEntryStateObserver_u24lambda_u242":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 327
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheEntryStateObserver$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheEntryStateObserver:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    .line 328
    nop

    .line 326
    .end local v0    # "$this$setBitmapMemoryCacheEntryStateObserver_u24lambda_u242":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheEntryStateObserver$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 328
    return-object v0
.end method

.method public final setBitmapMemoryCacheFactory(Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "bitmapMemoryCacheFactory"    # Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 486
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setBitmapMemoryCacheFactory_u24lambda_u2437":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 487
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheFactory$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheFactory:Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheFactory;

    .line 488
    nop

    .line 486
    .end local v0    # "$this$setBitmapMemoryCacheFactory_u24lambda_u2437":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheFactory$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 488
    return-object v0
.end method

.method public final setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 4
    .param p1, "bitmapMemoryCacheParamsSupplier"    # Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 320
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setBitmapMemoryCacheParamsSupplier_u24lambda_u241":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 321
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheParamsSupplier$1":I
    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 322
    nop

    .line 320
    .end local v0    # "$this$setBitmapMemoryCacheParamsSupplier_u24lambda_u241":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheParamsSupplier$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 322
    return-object v0

    .line 321
    .restart local v0    # "$this$setBitmapMemoryCacheParamsSupplier_u24lambda_u241":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .restart local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheParamsSupplier$1":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Required value was null."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final setBitmapMemoryCacheTrimStrategy(Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "trimStrategy"    # Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 330
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setBitmapMemoryCacheTrimStrategy_u24lambda_u243":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 331
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheTrimStrategy$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 332
    nop

    .line 330
    .end local v0    # "$this$setBitmapMemoryCacheTrimStrategy_u24lambda_u243":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapMemoryCacheTrimStrategy$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 332
    return-object v0
.end method

.method public final setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 316
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 572
    .local v0, "$this$setBitmapsConfig_u24lambda_u240":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 316
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapsConfig$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .end local v0    # "$this$setBitmapsConfig_u24lambda_u240":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setBitmapsConfig$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public final setCacheKeyFactory(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "cacheKeyFactory"    # Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 338
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setCacheKeyFactory_u24lambda_u245":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 339
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setCacheKeyFactory$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 340
    nop

    .line 338
    .end local v0    # "$this$setCacheKeyFactory_u24lambda_u245":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setCacheKeyFactory$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 340
    return-object v0
.end method

.method public final setCallerContextVerifier(Lcom/facebook/callercontext/CallerContextVerifier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "callerContextVerifier"    # Lcom/facebook/callercontext/CallerContextVerifier;

    .line 464
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setCallerContextVerifier_u24lambda_u2432":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 465
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setCallerContextVerifier$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 466
    nop

    .line 464
    .end local v0    # "$this$setCallerContextVerifier_u24lambda_u2432":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setCallerContextVerifier$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 466
    return-object v0
.end method

.method public final setCloseableReferenceLeakTracker(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "closeableReferenceLeakTracker"    # Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    const-string v0, "closeableReferenceLeakTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 572
    .local v0, "$this$setCloseableReferenceLeakTracker_u24lambda_u2433":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 470
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setCloseableReferenceLeakTracker$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    .end local v0    # "$this$setCloseableReferenceLeakTracker_u24lambda_u2433":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setCloseableReferenceLeakTracker$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public final setCustomFetchSequenceFactories(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "customProducerSequenceFactories"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/producers/CustomProducerSequenceFactory;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 449
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 572
    .local v0, "$this$setCustomFetchSequenceFactories_u24lambda_u2428":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 449
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setCustomFetchSequenceFactories$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->customProducerSequenceFactories:Ljava/util/Set;

    .end local v0    # "$this$setCustomFetchSequenceFactories_u24lambda_u2428":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setCustomFetchSequenceFactories$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public final setDiskCacheEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "diskCacheEnabled"    # Z

    .line 367
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setDiskCacheEnabled_u24lambda_u2410":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 368
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setDiskCacheEnabled$1":I
    iput-boolean p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->diskCacheEnabled:Z

    .line 369
    nop

    .line 367
    .end local v0    # "$this$setDiskCacheEnabled_u24lambda_u2410":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setDiskCacheEnabled$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 369
    return-object v0
.end method

.method public final setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 3
    .param p1, "downsampleEnabled"    # Z
    .annotation runtime Lkotlin/Deprecated;
        message = "Use the new setDownsampleMode() method"
    .end annotation

    .line 357
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setDownsampleEnabled_u24lambda_u249":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 358
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setDownsampleEnabled$1":I
    if-eqz p1, :cond_0

    .line 359
    sget-object v2, Lcom/facebook/imagepipeline/core/DownsampleMode;->ALWAYS:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    goto :goto_0

    .line 361
    :cond_0
    sget-object v2, Lcom/facebook/imagepipeline/core/DownsampleMode;->AUTO:Lcom/facebook/imagepipeline/core/DownsampleMode;

    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 363
    :goto_0
    nop

    .line 357
    .end local v0    # "$this$setDownsampleEnabled_u24lambda_u249":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setDownsampleEnabled$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 363
    return-object v0
.end method

.method public final setDownsampleMode(Lcom/facebook/imagepipeline/core/DownsampleMode;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "downsampleMode"    # Lcom/facebook/imagepipeline/core/DownsampleMode;

    const-string v0, "downsampleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setDownsampleMode_u24lambda_u248":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 353
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setDownsampleMode$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->downsampleMode:Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 354
    nop

    .line 352
    .end local v0    # "$this$setDownsampleMode_u24lambda_u248":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setDownsampleMode$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 354
    return-object v0
.end method

.method public final setDynamicDiskCacheConfigMap(Ljava/util/Map;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "dynamicDiskCacheConfigMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/cache/disk/DiskCacheConfig;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    const-string v0, "dynamicDiskCacheConfigMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 572
    .local v0, "$this$setDynamicDiskCacheConfigMap_u24lambda_u2438":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 492
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setDynamicDiskCacheConfigMap$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->dynamicDiskCacheConfigMap:Ljava/util/Map;

    .end local v0    # "$this$setDynamicDiskCacheConfigMap_u24lambda_u2438":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setDynamicDiskCacheConfigMap$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public final setEnableEncodedImageColorSpaceUsage(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "enableEncodedImageColorSpaceUsage"    # Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 392
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setEnableEncodedImageColorSpaceUsage_u24lambda_u2415":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setEnableEncodedImageColorSpaceUsage$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->enableEncodedImageColorSpaceUsage:Lcom/facebook/common/internal/Supplier;

    .line 394
    nop

    .line 392
    .end local v0    # "$this$setEnableEncodedImageColorSpaceUsage_u24lambda_u2415":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setEnableEncodedImageColorSpaceUsage$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 394
    return-object v0
.end method

.method public final setEncodedMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "encodedMemoryCache"    # Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 479
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 572
    .local v0, "$this$setEncodedMemoryCache_u24lambda_u2435":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 479
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCache$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .end local v0    # "$this$setEncodedMemoryCache_u24lambda_u2435":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCache$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public final setEncodedMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 4
    .param p1, "encodedMemoryCacheParamsSupplier"    # Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 373
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setEncodedMemoryCacheParamsSupplier_u24lambda_u2411":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 374
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCacheParamsSupplier$1":I
    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 375
    nop

    .line 373
    .end local v0    # "$this$setEncodedMemoryCacheParamsSupplier_u24lambda_u2411":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCacheParamsSupplier$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 375
    return-object v0

    .line 374
    .restart local v0    # "$this$setEncodedMemoryCacheParamsSupplier_u24lambda_u2411":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .restart local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCacheParamsSupplier$1":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Required value was null."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final setEncodedMemoryCacheTrimStrategy(Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "trimStrategy"    # Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 334
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setEncodedMemoryCacheTrimStrategy_u24lambda_u244":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 335
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCacheTrimStrategy$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->encodedMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/MemoryCache$CacheTrimStrategy;

    .line 336
    nop

    .line 334
    .end local v0    # "$this$setEncodedMemoryCacheTrimStrategy_u24lambda_u244":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setEncodedMemoryCacheTrimStrategy$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 336
    return-object v0
.end method

.method public final setExecutorServiceForAnimatedImages(Lcom/facebook/common/executors/SerialExecutorService;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "serialExecutorService"    # Lcom/facebook/common/executors/SerialExecutorService;

    .line 483
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 572
    .local v0, "$this$setExecutorServiceForAnimatedImages_u24lambda_u2436":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 483
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setExecutorServiceForAnimatedImages$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->serialExecutorServiceForAnimatedImages:Lcom/facebook/common/executors/SerialExecutorService;

    .end local v0    # "$this$setExecutorServiceForAnimatedImages_u24lambda_u2436":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setExecutorServiceForAnimatedImages$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object v0
.end method

.method public final setExecutorSupplier(Lcom/facebook/imagepipeline/core/ExecutorSupplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "executorSupplier"    # Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 377
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setExecutorSupplier_u24lambda_u2412":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 378
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setExecutorSupplier$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->executorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 379
    nop

    .line 377
    .end local v0    # "$this$setExecutorSupplier_u24lambda_u2412":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setExecutorSupplier$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 379
    return-object v0
.end method

.method public final setFileCacheFactory(Lcom/facebook/imagepipeline/core/FileCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "fileCacheFactory"    # Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 346
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setFileCacheFactory_u24lambda_u247":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 347
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setFileCacheFactory$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->fileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    .line 348
    nop

    .line 346
    .end local v0    # "$this$setFileCacheFactory_u24lambda_u247":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setFileCacheFactory$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 348
    return-object v0
.end method

.method public final setHttpConnectionTimeout(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "httpConnectionTimeoutMs"    # I

    .line 342
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setHttpConnectionTimeout_u24lambda_u246":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 343
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setHttpConnectionTimeout$1":I
    iput p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->httpConnectionTimeout:I

    .line 344
    nop

    .line 342
    .end local v0    # "$this$setHttpConnectionTimeout_u24lambda_u246":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setHttpConnectionTimeout$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 344
    return-object v0
.end method

.method public final setImageCacheStatsTracker(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "imageCacheStatsTracker"    # Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 382
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setImageCacheStatsTracker_u24lambda_u2413":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 383
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setImageCacheStatsTracker$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    .line 384
    nop

    .line 382
    .end local v0    # "$this$setImageCacheStatsTracker_u24lambda_u2413":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setImageCacheStatsTracker$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 384
    return-object v0
.end method

.method public final setImageDecoder(Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "imageDecoder"    # Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 386
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setImageDecoder_u24lambda_u2414":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 387
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setImageDecoder$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 388
    nop

    .line 386
    .end local v0    # "$this$setImageDecoder_u24lambda_u2414":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setImageDecoder$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 388
    return-object v0
.end method

.method public final setImageDecoderConfig(Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "imageDecoderConfig"    # Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    .line 460
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setImageDecoderConfig_u24lambda_u2431":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 461
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setImageDecoderConfig$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageDecoderConfig:Lcom/facebook/imagepipeline/decoder/ImageDecoderConfig;

    .line 462
    nop

    .line 460
    .end local v0    # "$this$setImageDecoderConfig_u24lambda_u2431":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setImageDecoderConfig$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 462
    return-object v0
.end method

.method public final setImageTranscoderFactory(Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "imageTranscoderFactory"    # Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 401
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setImageTranscoderFactory_u24lambda_u2417":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 402
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setImageTranscoderFactory$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/ImageTranscoderFactory;

    .line 403
    nop

    .line 401
    .end local v0    # "$this$setImageTranscoderFactory_u24lambda_u2417":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setImageTranscoderFactory$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 403
    return-object v0
.end method

.method public final setImageTranscoderType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 3
    .param p1, "imageTranscoderType"    # I

    .line 396
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setImageTranscoderType_u24lambda_u2416":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 397
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setImageTranscoderType$1":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderType:Ljava/lang/Integer;

    .line 398
    nop

    .line 396
    .end local v0    # "$this$setImageTranscoderType_u24lambda_u2416":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setImageTranscoderType$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 398
    return-object v0
.end method

.method public final setImageTranscoderType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 243
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->imageTranscoderType:Ljava/lang/Integer;

    return-void
.end method

.method public final setIsPrefetchEnabledSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "isPrefetchEnabledSupplier"    # Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 406
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setIsPrefetchEnabledSupplier_u24lambda_u2418":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 407
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setIsPrefetchEnabledSupplier$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 408
    nop

    .line 406
    .end local v0    # "$this$setIsPrefetchEnabledSupplier_u24lambda_u2418":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setIsPrefetchEnabledSupplier$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 408
    return-object v0
.end method

.method public final setMainDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "mainDiskCacheConfig"    # Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 410
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setMainDiskCacheConfig_u24lambda_u2419":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 411
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setMainDiskCacheConfig$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 412
    nop

    .line 410
    .end local v0    # "$this$setMainDiskCacheConfig_u24lambda_u2419":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setMainDiskCacheConfig$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 412
    return-object v0
.end method

.method public final setMemoryChunkType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 3
    .param p1, "memoryChunkType"    # I

    .line 419
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setMemoryChunkType_u24lambda_u2421":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 420
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setMemoryChunkType$1":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryChunkType:Ljava/lang/Integer;

    .line 421
    nop

    .line 419
    .end local v0    # "$this$setMemoryChunkType_u24lambda_u2421":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setMemoryChunkType$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 421
    return-object v0
.end method

.method public final setMemoryChunkType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Integer;

    .line 253
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryChunkType:Ljava/lang/Integer;

    return-void
.end method

.method public final setMemoryTrimmableRegistry(Lcom/facebook/common/memory/MemoryTrimmableRegistry;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "memoryTrimmableRegistry"    # Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 415
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setMemoryTrimmableRegistry_u24lambda_u2420":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 416
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setMemoryTrimmableRegistry$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->memoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    .line 417
    nop

    .line 415
    .end local v0    # "$this$setMemoryTrimmableRegistry_u24lambda_u2420":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setMemoryTrimmableRegistry$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 417
    return-object v0
.end method

.method public final setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "networkFetcher"    # Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/NetworkFetcher<",
            "*>;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 423
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setNetworkFetcher_u24lambda_u2422":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 424
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setNetworkFetcher$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->networkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    .line 425
    nop

    .line 423
    .end local v0    # "$this$setNetworkFetcher_u24lambda_u2422":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setNetworkFetcher$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 425
    return-object v0
.end method

.method public final setPlatformBitmapFactory(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "platformBitmapFactory"    # Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 427
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setPlatformBitmapFactory_u24lambda_u2423":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 428
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setPlatformBitmapFactory$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->platformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 429
    nop

    .line 427
    .end local v0    # "$this$setPlatformBitmapFactory_u24lambda_u2423":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setPlatformBitmapFactory$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 429
    return-object v0
.end method

.method public final setPoolFactory(Lcom/facebook/imagepipeline/memory/PoolFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "poolFactory"    # Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 431
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setPoolFactory_u24lambda_u2424":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 432
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setPoolFactory$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->poolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    .line 433
    nop

    .line 431
    .end local v0    # "$this$setPoolFactory_u24lambda_u2424":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setPoolFactory$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 433
    return-object v0
.end method

.method public final setProgressiveJpegConfig(Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "progressiveJpegConfig"    # Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 435
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setProgressiveJpegConfig_u24lambda_u2425":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 436
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setProgressiveJpegConfig$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->progressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 437
    nop

    .line 435
    .end local v0    # "$this$setProgressiveJpegConfig_u24lambda_u2425":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setProgressiveJpegConfig$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 437
    return-object v0
.end method

.method public final setRequestListener2s(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "requestListeners"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 443
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setRequestListener2s_u24lambda_u2427":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 444
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setRequestListener2s$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListener2s:Ljava/util/Set;

    .line 445
    nop

    .line 443
    .end local v0    # "$this$setRequestListener2s_u24lambda_u2427":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setRequestListener2s$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 445
    return-object v0
.end method

.method public final setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "requestListeners"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 439
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setRequestListeners_u24lambda_u2426":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setRequestListeners$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->requestListeners:Ljava/util/Set;

    .line 441
    nop

    .line 439
    .end local v0    # "$this$setRequestListeners_u24lambda_u2426":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setRequestListeners$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 441
    return-object v0
.end method

.method public final setResizeAndRotateEnabledForNetwork(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "resizeAndRotateEnabledForNetwork"    # Z

    .line 452
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setResizeAndRotateEnabledForNetwork_u24lambda_u2429":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setResizeAndRotateEnabledForNetwork$1":I
    iput-boolean p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->resizeAndRotateEnabledForNetwork:Z

    .line 454
    nop

    .line 452
    .end local v0    # "$this$setResizeAndRotateEnabledForNetwork_u24lambda_u2429":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setResizeAndRotateEnabledForNetwork$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 454
    return-object v0
.end method

.method public final setSmallImageDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2
    .param p1, "smallImageDiskCacheConfig"    # Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 456
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .local v0, "$this$setSmallImageDiskCacheConfig_u24lambda_u2430":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    const/4 v1, 0x0

    .line 457
    .local v1, "$i$a$-apply-ImagePipelineConfig$Builder$setSmallImageDiskCacheConfig$1":I
    iput-object p1, v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->smallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    .line 458
    nop

    .line 456
    .end local v0    # "$this$setSmallImageDiskCacheConfig_u24lambda_u2430":Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .end local v1    # "$i$a$-apply-ImagePipelineConfig$Builder$setSmallImageDiskCacheConfig$1":I
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 458
    return-object v0
.end method
