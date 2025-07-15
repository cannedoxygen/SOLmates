.class public final Lcom/canhub/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "CropImageView.kt"

# interfaces
.implements Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageView$CropShape;,
        Lcom/canhub/cropper/CropImageView$CropCornerShape;,
        Lcom/canhub/cropper/CropImageView$ScaleType;,
        Lcom/canhub/cropper/CropImageView$Guidelines;,
        Lcom/canhub/cropper/CropImageView$RequestSizeOptions;,
        Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;,
        Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;,
        Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;,
        Lcom/canhub/cropper/CropImageView$CropResult;,
        Lcom/canhub/cropper/CropImageView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageView.kt\ncom/canhub/cropper/CropImageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Pair.kt\nandroidx/core/util/PairKt\n*L\n1#1,1985:1\n1#2:1986\n66#3:1987\n78#3:1988\n*S KotlinDebug\n*F\n+ 1 CropImageView.kt\ncom/canhub/cropper/CropImageView\n*L\n1000#1:1987\n1000#1:1988\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008#\u0018\u0000 \u0081\u00022\u00020\u00012\u00020\u0002:\u0018\u0081\u0002\u0082\u0002\u0083\u0002\u0084\u0002\u0085\u0002\u0086\u0002\u0087\u0002\u0088\u0002\u0089\u0002\u008a\u0002\u008b\u0002\u008c\u0002B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J.\u0010\u00ac\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00ae\u0001\u001a\u00020$2\u0007\u0010\u00af\u0001\u001a\u00020$2\u0007\u0010\u00b0\u0001\u001a\u00020Y2\u0007\u0010\u00b1\u0001\u001a\u00020YH\u0002J\u0008\u0010\u00b2\u0001\u001a\u00030\u00ad\u0001J\u0008\u0010\u00b3\u0001\u001a\u00030\u00ad\u0001J\n\u0010\u00b4\u0001\u001a\u00030\u00ad\u0001H\u0002JM\u0010\u00b5\u0001\u001a\u00030\u00ad\u00012\n\u0008\u0002\u0010\u00b6\u0001\u001a\u00030\u00b7\u00012\t\u0008\u0002\u0010\u00b8\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u00b9\u0001\u001a\u00020\n2\t\u0008\u0002\u0010\u00ba\u0001\u001a\u00020\n2\n\u0008\u0002\u0010\u00bb\u0001\u001a\u00030\u00bc\u00012\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010DJ\u0008\u0010\u00bd\u0001\u001a\u00030\u00ad\u0001J\u0008\u0010\u00be\u0001\u001a\u00030\u00ad\u0001J\u001a\u0010A\u001a\u0004\u0018\u00010@2\u0007\u0010\u00b9\u0001\u001a\u00020\n2\u0007\u0010\u00ba\u0001\u001a\u00020\nJ$\u0010A\u001a\u0004\u0018\u00010@2\u0007\u0010\u00b9\u0001\u001a\u00020\n2\u0007\u0010\u00ba\u0001\u001a\u00020\n2\u0008\u0010\u00bb\u0001\u001a\u00030\u00bc\u0001J\u001c\u0010\u00bf\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00c0\u0001\u001a\u00020Y2\u0007\u0010\u00b1\u0001\u001a\u00020YH\u0002J\n\u0010\u00c1\u0001\u001a\u00030\u00ad\u0001H\u0002J\u0013\u0010\u00c2\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00c0\u0001\u001a\u00020YH\u0016J\u0012\u0010\u00c3\u0001\u001a\u00030\u00ad\u00012\u0008\u0010\u00c4\u0001\u001a\u00030\u00c5\u0001J7\u0010\u00c6\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00c7\u0001\u001a\u00020Y2\u0007\u0010\u00c8\u0001\u001a\u00020\n2\u0007\u0010\u00c9\u0001\u001a\u00020\n2\u0007\u0010\u00ca\u0001\u001a\u00020\n2\u0007\u0010\u00cb\u0001\u001a\u00020\nH\u0014J\u001c\u0010\u00cc\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00cd\u0001\u001a\u00020\n2\u0007\u0010\u00ce\u0001\u001a\u00020\nH\u0014J\u0014\u0010\u00cf\u0001\u001a\u00030\u00ad\u00012\u0008\u0010\u00d0\u0001\u001a\u00030\u00d1\u0001H\u0016J\u000c\u0010\u00d2\u0001\u001a\u0005\u0018\u00010\u00d1\u0001H\u0016J\u0012\u0010\u00d3\u0001\u001a\u00030\u00ad\u00012\u0008\u0010\u00c4\u0001\u001a\u00030\u00d4\u0001J.\u0010\u00d5\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00d6\u0001\u001a\u00020\n2\u0007\u0010\u00d7\u0001\u001a\u00020\n2\u0007\u0010\u00d8\u0001\u001a\u00020\n2\u0007\u0010\u00d9\u0001\u001a\u00020\nH\u0014J\u0008\u0010\u00da\u0001\u001a\u00030\u00ad\u0001J\u0011\u0010\u00db\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00a1\u0001\u001a\u00020\nJ\u001a\u0010\u00dc\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00dd\u0001\u001a\u00020\n2\u0007\u0010\u00de\u0001\u001a\u00020\nJ9\u0010\u00df\u0001\u001a\u00030\u00ad\u00012\t\u0010\u00e0\u0001\u001a\u0004\u0018\u00010@2\u0006\u0010P\u001a\u00020\n2\u0008\u0010T\u001a\u0004\u0018\u00010D2\u0007\u0010\u00e1\u0001\u001a\u00020\n2\u0007\u0010\u00e2\u0001\u001a\u00020\nH\u0002J\u0011\u0010\u00e3\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00e4\u0001\u001a\u00020YJ\n\u0010\u00e5\u0001\u001a\u00030\u00ad\u0001H\u0002J\u0011\u0010\u00e6\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00e7\u0001\u001a\u00020YJ\u0013\u0010\u00e8\u0001\u001a\u00030\u00ad\u00012\t\u0010\u00e0\u0001\u001a\u0004\u0018\u00010@J\u001f\u0010\u00e8\u0001\u001a\u00030\u00ad\u00012\t\u0010\u00e0\u0001\u001a\u0004\u0018\u00010@2\n\u0010\u00e9\u0001\u001a\u0005\u0018\u00010\u00ea\u0001J\u0013\u0010\u00eb\u0001\u001a\u00030\u00ad\u00012\t\u0010\u00ec\u0001\u001a\u0004\u0018\u00010DJ\u001a\u0010\u00ed\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00ee\u0001\u001a\u00020\n2\u0007\u0010\u00ef\u0001\u001a\u00020\nJ\u001a\u0010\u00f0\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00f1\u0001\u001a\u00020\n2\u0007\u0010\u00f2\u0001\u001a\u00020\nJ\u0011\u0010\u00f3\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00f4\u0001\u001a\u00020YJ\u0014\u0010\u00f5\u0001\u001a\u00030\u00ad\u00012\n\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u0086\u0001J\u0014\u0010\u00f7\u0001\u001a\u00030\u00ad\u00012\n\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u008c\u0001J\u0014\u0010\u00f8\u0001\u001a\u00030\u00ad\u00012\n\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u008a\u0001J\u0014\u0010\u00f9\u0001\u001a\u00030\u00ad\u00012\n\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u0088\u0001J\u0014\u0010\u00fa\u0001\u001a\u00030\u00ad\u00012\n\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u008e\u0001J\n\u0010\u00fb\u0001\u001a\u00030\u00ad\u0001H\u0002J\u0011\u0010\u00fc\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00fd\u0001\u001a\u00020$JA\u0010\u00fe\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u00b9\u0001\u001a\u00020\n2\u0007\u0010\u00ba\u0001\u001a\u00020\n2\u0008\u0010\u00bb\u0001\u001a\u00030\u00bc\u00012\u0008\u0010\u00b6\u0001\u001a\u00030\u00b7\u00012\u0007\u0010\u00b8\u0001\u001a\u00020\n2\u0008\u0010C\u001a\u0004\u0018\u00010DJ\u0013\u0010\u00ff\u0001\u001a\u00030\u00ad\u00012\u0007\u0010\u0080\u0002\u001a\u00020YH\u0002R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00138F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00198F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R$\u0010%\u001a\u00020$2\u0006\u0010#\u001a\u00020$8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020+8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R(\u00100\u001a\u0004\u0018\u00010/2\u0008\u0010.\u001a\u0004\u0018\u00010/8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R(\u00105\u001a\u0004\u0018\u0001062\u0008\u00105\u001a\u0004\u0018\u0001068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u0013\u0010;\u001a\u0004\u0018\u00010<8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0013\u0010?\u001a\u0004\u0018\u00010@8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010BR\u001c\u0010C\u001a\u0004\u0018\u00010DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR(\u0010I\u001a\u0004\u0018\u00010J2\u0008\u0010I\u001a\u0004\u0018\u00010J8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR$\u0010P\u001a\u00020\n2\u0006\u0010O\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010 \"\u0004\u0008R\u0010\"R\"\u0010T\u001a\u0004\u0018\u00010D2\u0008\u0010S\u001a\u0004\u0018\u00010D@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010FR\u000e\u0010V\u001a\u00020WX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010Z\u001a\u00020Y2\u0006\u0010X\u001a\u00020Y8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u0011\u0010^\u001a\u00020Y8F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010[R$\u0010`\u001a\u00020Y2\u0006\u0010_\u001a\u00020Y8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008`\u0010[\"\u0004\u0008a\u0010]R$\u0010c\u001a\u00020Y2\u0006\u0010b\u001a\u00020Y8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008c\u0010[\"\u0004\u0008d\u0010]R\u001a\u0010e\u001a\u00020YX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010[\"\u0004\u0008f\u0010]R$\u0010h\u001a\u00020Y2\u0006\u0010g\u001a\u00020Y8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008h\u0010[\"\u0004\u0008i\u0010]R$\u0010k\u001a\u00020Y2\u0006\u0010j\u001a\u00020Y8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008k\u0010[\"\u0004\u0008l\u0010]R$\u0010n\u001a\u00020Y2\u0006\u0010m\u001a\u00020Y8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008n\u0010[\"\u0004\u0008o\u0010]R\u000e\u0010p\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010q\u001a\u0004\u0018\u00010rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010s\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010u\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u0004\u0018\u00010wX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010x\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010y\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010z\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010{\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010|\u001a\u00020}X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010~\u001a\u00020}X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u007f\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0080\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0081\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0082\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0083\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0084\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u008f\u0001\u001a\u00030\u0090\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0091\u0001\u001a\u0004\u0018\u00010<X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0092\u0001\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0093\u0001\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0094\u0001\u001a\u00030\u0095\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0096\u0001\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0097\u0001\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0098\u0001\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0099\u0001\u001a\u00020YX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u009a\u0001\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u009b\u0001\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u009c\u0001\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u009d\u0001\u001a\u00020\n2\u0007\u0010\u009d\u0001\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u009e\u0001\u0010 \"\u0005\u0008\u009f\u0001\u0010\"R\u0011\u0010\u00a0\u0001\u001a\u0004\u0018\u00010@X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u00a2\u0001\u001a\u00020\n2\u0007\u0010\u00a1\u0001\u001a\u00020\n8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00a3\u0001\u0010 \"\u0005\u0008\u00a4\u0001\u0010\"R,\u0010\u00a5\u0001\u001a\u00030\u0095\u00012\u0008\u0010\u00a5\u0001\u001a\u00030\u0095\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001\"\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u0015\u0010\u00aa\u0001\u001a\u0004\u0018\u00010/8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ab\u0001\u00102\u00a8\u0006\u008d\u0002"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "aspectRatio",
        "Landroid/util/Pair;",
        "",
        "getAspectRatio",
        "()Landroid/util/Pair;",
        "bitmapCroppingWorkerJob",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
        "bitmapLoadingWorkerJob",
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob;",
        "cornerShape",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "setCornerShape",
        "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V",
        "cropLabelText",
        "",
        "getCropLabelText",
        "()Ljava/lang/String;",
        "setCropLabelText",
        "(Ljava/lang/String;)V",
        "cropLabelTextColor",
        "getCropLabelTextColor",
        "()I",
        "setCropLabelTextColor",
        "(I)V",
        "textSize",
        "",
        "cropLabelTextSize",
        "getCropLabelTextSize",
        "()F",
        "setCropLabelTextSize",
        "(F)V",
        "cropPoints",
        "",
        "getCropPoints",
        "()[F",
        "rect",
        "Landroid/graphics/Rect;",
        "cropRect",
        "getCropRect",
        "()Landroid/graphics/Rect;",
        "setCropRect",
        "(Landroid/graphics/Rect;)V",
        "cropShape",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "setCropShape",
        "(Lcom/canhub/cropper/CropImageView$CropShape;)V",
        "cropWindowRect",
        "Landroid/graphics/RectF;",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "croppedImage",
        "Landroid/graphics/Bitmap;",
        "getCroppedImage",
        "()Landroid/graphics/Bitmap;",
        "customOutputUri",
        "Landroid/net/Uri;",
        "getCustomOutputUri",
        "()Landroid/net/Uri;",
        "setCustomOutputUri",
        "(Landroid/net/Uri;)V",
        "guidelines",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "setGuidelines",
        "(Lcom/canhub/cropper/CropImageView$Guidelines;)V",
        "resId",
        "imageResource",
        "getImageResource",
        "setImageResource",
        "<set-?>",
        "imageUri",
        "getImageUri",
        "imageView",
        "Landroid/widget/ImageView;",
        "autoZoomEnabled",
        "",
        "isAutoZoomEnabled",
        "()Z",
        "setAutoZoomEnabled",
        "(Z)V",
        "isFixAspectRatio",
        "flipHorizontally",
        "isFlippedHorizontally",
        "setFlippedHorizontally",
        "flipVertically",
        "isFlippedVertically",
        "setFlippedVertically",
        "isSaveBitmapToInstanceState",
        "setSaveBitmapToInstanceState",
        "showCropLabel",
        "isShowCropLabel",
        "setShowCropLabel",
        "showCropOverlay",
        "isShowCropOverlay",
        "setShowCropOverlay",
        "showProgressBar",
        "isShowProgressBar",
        "setShowProgressBar",
        "loadedSampleSize",
        "mAnimation",
        "Lcom/canhub/cropper/CropImageAnimation;",
        "mAutoZoomEnabled",
        "mCropLabelTextColor",
        "mCropLabelTextSize",
        "mCropOverlayView",
        "Lcom/canhub/cropper/CropOverlayView;",
        "mCropTextLabel",
        "mDegreesRotated",
        "mFlipHorizontally",
        "mFlipVertically",
        "mImageInverseMatrix",
        "Landroid/graphics/Matrix;",
        "mImageMatrix",
        "mImagePoints",
        "mImageResource",
        "mInitialDegreesRotated",
        "mLayoutHeight",
        "mLayoutWidth",
        "mMaxZoom",
        "mOnCropImageCompleteListener",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "mOnCropOverlayReleasedListener",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;",
        "mOnSetCropOverlayMovedListener",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;",
        "mOnSetCropWindowChangeListener",
        "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;",
        "mOnSetImageUriCompleteListener",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "mProgressBar",
        "Landroid/widget/ProgressBar;",
        "mRestoreCropWindowRect",
        "mRestoreDegreesRotated",
        "mScaleImagePoints",
        "mScaleType",
        "Lcom/canhub/cropper/CropImageView$ScaleType;",
        "mShowCropLabel",
        "mShowCropOverlay",
        "mShowProgressBar",
        "mSizeChanged",
        "mZoom",
        "mZoomOffsetX",
        "mZoomOffsetY",
        "maxZoom",
        "getMaxZoom",
        "setMaxZoom",
        "originalBitmap",
        "degrees",
        "rotatedDegrees",
        "getRotatedDegrees",
        "setRotatedDegrees",
        "scaleType",
        "getScaleType",
        "()Lcom/canhub/cropper/CropImageView$ScaleType;",
        "setScaleType",
        "(Lcom/canhub/cropper/CropImageView$ScaleType;)V",
        "wholeImageRect",
        "getWholeImageRect",
        "applyImageMatrix",
        "",
        "width",
        "height",
        "center",
        "animate",
        "clearAspectRatio",
        "clearImage",
        "clearImageInt",
        "croppedImageAsync",
        "saveCompressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "saveCompressQuality",
        "reqWidth",
        "reqHeight",
        "options",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "flipImageHorizontally",
        "flipImageVertically",
        "handleCropWindowChanged",
        "inProgress",
        "mapImagePointsByImageMatrix",
        "onCropWindowChanged",
        "onImageCroppingAsyncComplete",
        "result",
        "Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onRestoreInstanceState",
        "state",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "onSetImageUriAsyncComplete",
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "resetCropRect",
        "rotateImage",
        "setAspectRatio",
        "aspectRatioX",
        "aspectRatioY",
        "setBitmap",
        "bitmap",
        "loadSampleSize",
        "degreesRotated",
        "setCenterMoveEnabled",
        "centerMoveEnabled",
        "setCropOverlayVisibility",
        "setFixedAspectRatio",
        "fixAspectRatio",
        "setImageBitmap",
        "exif",
        "Landroidx/exifinterface/media/ExifInterface;",
        "setImageUriAsync",
        "uri",
        "setMaxCropResultSize",
        "maxCropResultWidth",
        "maxCropResultHeight",
        "setMinCropResultSize",
        "minCropResultWidth",
        "minCropResultHeight",
        "setMultiTouchEnabled",
        "multiTouchEnabled",
        "setOnCropImageCompleteListener",
        "listener",
        "setOnCropWindowChangedListener",
        "setOnSetCropOverlayMovedListener",
        "setOnSetCropOverlayReleasedListener",
        "setOnSetImageUriCompleteListener",
        "setProgressBarVisibility",
        "setSnapRadius",
        "snapRadius",
        "startCropWorkerTask",
        "updateImageBounds",
        "clear",
        "Companion",
        "CropCornerShape",
        "CropResult",
        "CropShape",
        "Guidelines",
        "OnCropImageCompleteListener",
        "OnSetCropOverlayMovedListener",
        "OnSetCropOverlayReleasedListener",
        "OnSetCropWindowChangeListener",
        "OnSetImageUriCompleteListener",
        "RequestSizeOptions",
        "ScaleType",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropImageView$Companion;


# instance fields
.field private bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/BitmapCroppingWorkerJob;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/canhub/cropper/BitmapLoadingWorkerJob;",
            ">;"
        }
    .end annotation
.end field

.field private customOutputUri:Landroid/net/Uri;

.field private imageUri:Landroid/net/Uri;

.field private final imageView:Landroid/widget/ImageView;

.field private isSaveBitmapToInstanceState:Z

.field private loadedSampleSize:I

.field private mAnimation:Lcom/canhub/cropper/CropImageAnimation;

.field private mAutoZoomEnabled:Z

.field private mCropLabelTextColor:I

.field private mCropLabelTextSize:F

.field private final mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

.field private mCropTextLabel:Ljava/lang/String;

.field private mDegreesRotated:I

.field private mFlipHorizontally:Z

.field private mFlipVertically:Z

.field private final mImageInverseMatrix:Landroid/graphics/Matrix;

.field private final mImageMatrix:Landroid/graphics/Matrix;

.field private final mImagePoints:[F

.field private mImageResource:I

.field private mInitialDegreesRotated:I

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mMaxZoom:I

.field private mOnCropImageCompleteListener:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

.field private mOnCropOverlayReleasedListener:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

.field private mOnSetCropOverlayMovedListener:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

.field private mOnSetCropWindowChangeListener:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

.field private mOnSetImageUriCompleteListener:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private mRestoreCropWindowRect:Landroid/graphics/RectF;

.field private mRestoreDegreesRotated:I

.field private final mScaleImagePoints:[F

.field private mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

.field private mShowCropLabel:Z

.field private mShowCropOverlay:Z

.field private mShowProgressBar:Z

.field private mSizeChanged:Z

.field private mZoom:F

.field private mZoomOffsetX:F

.field private mZoomOffsetY:F

.field private originalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageView;->Companion:Lcom/canhub/cropper/CropImageView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    .line 58
    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    .line 61
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    .line 109
    const-string v1, ""

    iput-object v1, p0, Lcom/canhub/cropper/CropImageView;->mCropTextLabel:Ljava/lang/String;

    .line 115
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextSize:F

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextColor:I

    .line 127
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    .line 133
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 158
    iput v0, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    .line 161
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 1766
    nop

    .line 1767
    const/4 v1, 0x0

    .line 1768
    .local v1, "options":Lcom/canhub/cropper/CropImageOptions;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1769
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_1

    .line 1770
    const-string v3, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1771
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 1772
    const-string v4, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/canhub/cropper/CropImageOptions;

    .line 1775
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-nez v1, :cond_3

    .line 1776
    new-instance v3, Lcom/canhub/cropper/CropImageOptions;

    invoke-direct {v3}, Lcom/canhub/cropper/CropImageOptions;-><init>()V

    move-object v1, v3

    .line 1777
    if-eqz p2, :cond_3

    .line 1778
    sget-object v3, Lcom/canhub/cropper/R$styleable;->CropImageView:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v4, "context.obtainStyledAttr\u2026able.CropImageView, 0, 0)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1779
    .local v3, "ta":Landroid/content/res/TypedArray;
    nop

    .line 1780
    nop

    .line 1781
    :try_start_0
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    .line 1782
    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 1780
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 1784
    nop

    .line 1785
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    .line 1786
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    .line 1784
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    .line 1788
    nop

    .line 1789
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioY:I

    .line 1790
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    .line 1788
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    .line 1792
    invoke-static {}, Lcom/canhub/cropper/CropImageView$ScaleType;->values()[Lcom/canhub/cropper/CropImageView$ScaleType;

    move-result-object v4

    .line 1793
    nop

    .line 1794
    sget v5, Lcom/canhub/cropper/R$styleable;->CropImageView_cropScaleType:I

    .line 1795
    iget-object v6, v1, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v6

    .line 1793
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    .line 1792
    iput-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    .line 1798
    nop

    .line 1799
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAutoZoomEnabled:I

    .line 1800
    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 1798
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 1802
    nop

    .line 1803
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 1802
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 1805
    nop

    .line 1806
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropCenterMoveEnabled:I

    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    .line 1805
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    .line 1808
    nop

    .line 1809
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMaxZoom:I

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 1808
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    .line 1810
    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropShape;->values()[Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v4

    .line 1811
    nop

    .line 1812
    sget v5, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShape:I

    .line 1813
    iget-object v6, v1, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v6

    .line 1811
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    .line 1810
    iput-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 1816
    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v4

    .line 1817
    nop

    .line 1818
    sget v5, Lcom/canhub/cropper/R$styleable;->CropImageView_cornerShape:I

    .line 1819
    iget-object v6, v1, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v6

    .line 1817
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    .line 1816
    iput-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 1822
    nop

    .line 1823
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropCornerRadius:I

    .line 1824
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    .line 1822
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    .line 1826
    invoke-static {}, Lcom/canhub/cropper/CropImageView$Guidelines;->values()[Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object v4

    .line 1827
    nop

    .line 1828
    sget v5, Lcom/canhub/cropper/R$styleable;->CropImageView_cropGuidelines:I

    iget-object v6, v1, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v6

    .line 1827
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    .line 1826
    iput-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 1831
    nop

    .line 1832
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropSnapRadius:I

    .line 1833
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    .line 1831
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    .line 1835
    nop

    .line 1836
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropTouchRadius:I

    .line 1837
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    .line 1835
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    .line 1839
    nop

    .line 1840
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropInitialCropWindowPaddingRatio:I

    .line 1841
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 1839
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 1843
    nop

    .line 1844
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropCornerCircleFillColor:I

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    .line 1843
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    .line 1846
    nop

    .line 1847
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderLineThickness:I

    .line 1848
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    .line 1846
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    .line 1850
    nop

    .line 1851
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderLineColor:I

    .line 1852
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    .line 1850
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    .line 1854
    nop

    .line 1855
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    .line 1856
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    .line 1854
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    .line 1858
    nop

    .line 1859
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerOffset:I

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    .line 1858
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    .line 1861
    nop

    .line 1862
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerLength:I

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    .line 1861
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    .line 1864
    nop

    .line 1865
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerColor:I

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    .line 1864
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    .line 1867
    nop

    .line 1868
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropGuidelinesThickness:I

    .line 1869
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    .line 1867
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    .line 1871
    nop

    .line 1872
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropGuidelinesColor:I

    .line 1873
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    .line 1871
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    .line 1875
    nop

    .line 1876
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBackgroundColor:I

    .line 1877
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    .line 1875
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    .line 1879
    nop

    .line 1880
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShowCropOverlay:I

    .line 1881
    iget-boolean v5, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    .line 1879
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    .line 1883
    nop

    .line 1884
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShowProgressBar:I

    .line 1885
    iget-boolean v5, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    .line 1883
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    .line 1887
    nop

    .line 1888
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropBorderCornerThickness:I

    .line 1889
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    .line 1887
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    .line 1891
    nop

    .line 1892
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropWindowWidth:I

    .line 1893
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v5, v5

    .line 1891
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 1894
    float-to-int v4, v4

    .line 1891
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 1895
    nop

    .line 1896
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropWindowHeight:I

    .line 1897
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v5, v5

    .line 1895
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 1898
    float-to-int v4, v4

    .line 1895
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 1899
    nop

    .line 1900
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropResultWidthPX:I

    .line 1901
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v5, v5

    .line 1899
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1902
    float-to-int v4, v4

    .line 1899
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    .line 1903
    nop

    .line 1904
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMinCropResultHeightPX:I

    .line 1905
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v5, v5

    .line 1903
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1906
    float-to-int v4, v4

    .line 1903
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    .line 1907
    nop

    .line 1908
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMaxCropResultWidthPX:I

    .line 1909
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v5, v5

    .line 1907
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1910
    float-to-int v4, v4

    .line 1907
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 1911
    nop

    .line 1912
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropMaxCropResultHeightPX:I

    .line 1913
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v5, v5

    .line 1911
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 1914
    float-to-int v4, v4

    .line 1911
    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 1915
    nop

    .line 1916
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFlipHorizontally:I

    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    .line 1915
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    .line 1918
    nop

    .line 1919
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFlipHorizontally:I

    .line 1920
    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    .line 1918
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    .line 1922
    nop

    .line 1923
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropperLabelTextSize:I

    .line 1924
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    .line 1922
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    .line 1926
    nop

    .line 1927
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropperLabelTextColor:I

    .line 1928
    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    .line 1926
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    .line 1930
    nop

    .line 1931
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropperLabelText:I

    .line 1930
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    .line 1933
    nop

    .line 1934
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropShowLabel:I

    .line 1935
    iget-boolean v5, v1, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    .line 1933
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    .line 1937
    nop

    .line 1938
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropSaveBitmapToInstanceState:I

    .line 1939
    iget-boolean v5, p0, Lcom/canhub/cropper/CropImageView;->isSaveBitmapToInstanceState:Z

    .line 1937
    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/canhub/cropper/CropImageView;->isSaveBitmapToInstanceState:Z

    .line 1942
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1943
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropAspectRatioX:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1944
    sget v4, Lcom/canhub/cropper/R$styleable;->CropImageView_cropFixAspectRatio:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1946
    iput-boolean v0, v1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1950
    goto :goto_1

    .line 1949
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1953
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageOptions;->validate()V

    .line 1954
    iget-object v3, v1, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    iput-object v3, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    .line 1955
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 1956
    iget v3, v1, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    iput v3, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    .line 1957
    iget v3, v1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    iput v3, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextSize:F

    .line 1958
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    .line 1959
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    .line 1960
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    .line 1961
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1962
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 1963
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1964
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/canhub/cropper/R$layout;->crop_image_view:I

    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1965
    .local v0, "v":Landroid/view/View;
    sget v4, Lcom/canhub/cropper/R$id;->ImageView_image:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "v.findViewById(R.id.ImageView_image)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    .line 1966
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1967
    sget v4, Lcom/canhub/cropper/R$id;->CropOverlayView:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/canhub/cropper/CropOverlayView;

    iput-object v4, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    .line 1968
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    move-object v5, p0

    check-cast v5, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    invoke-virtual {v4, v5}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V

    .line 1969
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v4, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    .line 1970
    sget v4, Lcom/canhub/cropper/R$id;->CropProgressBar:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "v.findViewById(R.id.CropProgressBar)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/canhub/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 1971
    nop

    .line 1972
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->progressBarColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 1974
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setProgressBarVisibility()V

    .line 1975
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "options":Lcom/canhub/cropper/CropImageOptions;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    nop

    .line 38
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1984
    return-void
.end method

.method private final applyImageMatrix(FFZZ)V
    .locals 11
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "center"    # Z
    .param p4, "animate"    # Z

    .line 1304
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 1305
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_c

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_c

    cmpl-float v2, p2, v1

    if-lez v2, :cond_c

    .line 1306
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1307
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 1308
    .local v2, "cropRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1309
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 1311
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1312
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, p2, v6

    div-float/2addr v6, v5

    .line 1311
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1314
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1316
    iget v3, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    if-lez v3, :cond_0

    .line 1317
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1318
    iget v4, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    int-to-float v4, v4

    .line 1319
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v6, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    .line 1320
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v7, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v7

    .line 1317
    invoke-virtual {v3, v4, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1322
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1325
    :cond_0
    nop

    .line 1326
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v3

    div-float v3, p1, v3

    .line 1327
    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v4, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v4

    div-float v4, p2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1325
    nop

    .line 1329
    .local v3, "scale":F
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v6, Lcom/canhub/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-eq v4, v6, :cond_3

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v6, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/canhub/cropper/CropImageView$ScaleType;

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v4, v6, :cond_1

    cmpg-float v4, v3, v7

    if-ltz v4, :cond_3

    .line 1330
    :cond_1
    cmpl-float v4, v3, v7

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1339
    :cond_2
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v6, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-ne v4, v6, :cond_4

    .line 1340
    nop

    .line 1341
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v6, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v6

    div-float/2addr v4, v6

    .line 1342
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v7, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1340
    iput v4, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    goto :goto_1

    .line 1332
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1333
    nop

    .line 1334
    nop

    .line 1335
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v6, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v6

    .line 1336
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v7, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v7

    .line 1332
    invoke-virtual {v4, v3, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1338
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1346
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    neg-float v4, v4

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 1347
    .local v4, "scaleX":F
    :goto_2
    iget-boolean v6, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    neg-float v6, v6

    goto :goto_3

    :cond_6
    iget v6, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 1348
    .local v6, "scaleY":F
    :goto_3
    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1349
    nop

    .line 1350
    nop

    .line 1351
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v8, v9}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterX([F)F

    move-result v8

    .line 1352
    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v10, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v9, v10}, Lcom/canhub/cropper/BitmapUtils;->getRectCenterY([F)F

    move-result v9

    .line 1348
    invoke-virtual {v7, v4, v6, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1354
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1355
    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1357
    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v8, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-ne v7, v8, :cond_7

    if-eqz p3, :cond_7

    if-nez p4, :cond_7

    .line 1358
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    .line 1359
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    goto/16 :goto_6

    .line 1360
    :cond_7
    if-eqz p3, :cond_a

    .line 1362
    nop

    .line 1363
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v7, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v7

    cmpl-float v7, p1, v7

    if-lez v7, :cond_8

    move v7, v1

    goto :goto_4

    .line 1364
    :cond_8
    nop

    .line 1365
    nop

    .line 1366
    div-float v7, p1, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    .line 1367
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v8, v9}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v8

    neg-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1369
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v10, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v9, v10}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1370
    nop

    .line 1364
    div-float/2addr v7, v4

    .line 1362
    :goto_4
    iput v7, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    .line 1372
    nop

    .line 1373
    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v7, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_9

    goto :goto_5

    .line 1374
    :cond_9
    nop

    .line 1375
    nop

    .line 1376
    div-float v1, p2, v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v1, v5

    .line 1377
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v5, v7}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v5

    neg-float v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1379
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v7, v8}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v7

    sub-float/2addr v5, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1380
    nop

    .line 1374
    div-float/2addr v1, v6

    .line 1372
    :goto_5
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    goto :goto_6

    .line 1384
    :cond_a
    nop

    .line 1385
    nop

    .line 1386
    iget v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    mul-float/2addr v1, v4

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1387
    iget v5, v2, Landroid/graphics/RectF;->right:F

    neg-float v5, v5

    add-float/2addr v5, p1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1388
    nop

    .line 1385
    div-float/2addr v1, v4

    .line 1384
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    .line 1391
    nop

    .line 1392
    nop

    .line 1393
    iget v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    mul-float/2addr v1, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1394
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v5, v5

    add-float/2addr v5, p2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1395
    nop

    .line 1392
    div-float/2addr v1, v6

    .line 1391
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    .line 1399
    :goto_6
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    mul-float/2addr v5, v4

    iget v7, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    mul-float/2addr v7, v6

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1400
    iget v1, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    mul-float/2addr v1, v4

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    mul-float/2addr v5, v6

    invoke-virtual {v2, v1, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1401
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1402
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->mapImagePointsByImageMatrix()V

    .line 1403
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 1405
    if-eqz p4, :cond_b

    .line 1407
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mAnimation:Lcom/canhub/cropper/CropImageAnimation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5, v7}, Lcom/canhub/cropper/CropImageAnimation;->setEndState([FLandroid/graphics/Matrix;)V

    .line 1408
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->mAnimation:Lcom/canhub/cropper/CropImageAnimation;

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    .line 1409
    :cond_b
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1411
    :goto_7
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/canhub/cropper/CropImageView;->updateImageBounds(Z)V

    .line 1413
    .end local v2    # "cropRect":Landroid/graphics/RectF;
    .end local v3    # "scale":F
    .end local v4    # "scaleX":F
    .end local v6    # "scaleY":F
    :cond_c
    return-void
.end method

.method private final clearImageInt()V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 955
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 957
    const/4 v1, 0x0

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    .line 958
    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    .line 959
    const/4 v2, 0x1

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    .line 960
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 961
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 962
    const/4 v2, 0x0

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    .line 963
    iput v2, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    .line 964
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 965
    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 966
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mRestoreDegreesRotated:I

    .line 967
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 968
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setCropOverlayVisibility()V

    .line 969
    return-void
.end method

.method public static synthetic croppedImageAsync$default(Lcom/canhub/cropper/CropImageView;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;ILjava/lang/Object;)V
    .locals 4

    .line 641
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 642
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 641
    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 643
    const/16 p2, 0x5a

    move p8, p2

    goto :goto_0

    .line 641
    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 644
    move v1, v0

    goto :goto_1

    .line 641
    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    .line 645
    goto :goto_2

    .line 641
    :cond_3
    move v0, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    .line 646
    sget-object p5, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-object v2, p5

    goto :goto_3

    .line 641
    :cond_4
    move-object v2, p5

    :goto_3
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    .line 647
    const/4 p6, 0x0

    move-object v3, p6

    goto :goto_4

    .line 641
    :cond_5
    move-object v3, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v1

    move p6, v0

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/canhub/cropper/CropImageView;->croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V

    return-void
.end method

.method private final handleCropWindowChanged(ZZ)V
    .locals 13
    .param p1, "inProgress"    # Z
    .param p2, "animate"    # Z

    .line 1242
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v0

    .line 1243
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v1

    .line 1244
    .local v1, "height":I
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    if-lez v0, :cond_b

    if-lez v1, :cond_b

    .line 1245
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 1246
    .local v2, "cropRect":Landroid/graphics/RectF;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 1247
    iget v5, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v4

    if-ltz v5, :cond_0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v5, v4

    if-ltz v4, :cond_0

    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 1248
    :cond_0
    nop

    .line 1249
    int-to-float v4, v0

    .line 1250
    int-to-float v5, v1

    .line 1251
    nop

    .line 1252
    nop

    .line 1248
    invoke-direct {p0, v4, v5, v3, v3}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    goto/16 :goto_0

    .line 1255
    :cond_1
    iget-boolean v5, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 1256
    :cond_2
    const/4 v5, 0x0

    .line 1258
    .local v5, "newZoom":F
    iget v7, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    iget v8, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v8, v0

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 1259
    nop

    .line 1260
    iget v7, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    int-to-float v7, v7

    .line 1261
    nop

    .line 1262
    int-to-float v8, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    div-float/2addr v9, v10

    const v10, 0x3f23d70a    # 0.64f

    div-float/2addr v9, v10

    div-float/2addr v8, v9

    .line 1263
    int-to-float v9, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    iget v12, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    div-float/2addr v11, v12

    div-float/2addr v11, v10

    div-float/2addr v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1259
    move v5, v7

    .line 1267
    :cond_3
    iget v7, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v8, v0

    const v9, 0x3f266666    # 0.65f

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v8, v1

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 1268
    :cond_4
    nop

    .line 1269
    nop

    .line 1270
    nop

    .line 1271
    int-to-float v7, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    div-float/2addr v8, v9

    const v9, 0x3f028f5c    # 0.51f

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    .line 1272
    int-to-float v8, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v10

    iget v11, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    div-float/2addr v10, v11

    div-float/2addr v10, v9

    div-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1268
    move v5, v6

    .line 1276
    :cond_5
    iget-boolean v6, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-nez v6, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1278
    :cond_6
    cmpl-float v4, v5, v4

    if-lez v4, :cond_a

    iget v4, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    cmpg-float v4, v5, v4

    const/4 v6, 0x1

    if-nez v4, :cond_7

    move v3, v6

    :cond_7
    if-nez v3, :cond_a

    .line 1279
    if-eqz p2, :cond_9

    .line 1280
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mAnimation:Lcom/canhub/cropper/CropImageAnimation;

    if-nez v3, :cond_8

    .line 1282
    new-instance v3, Lcom/canhub/cropper/CropImageAnimation;

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-direct {v3, v4, v7}, Lcom/canhub/cropper/CropImageAnimation;-><init>(Landroid/widget/ImageView;Lcom/canhub/cropper/CropOverlayView;)V

    iput-object v3, p0, Lcom/canhub/cropper/CropImageView;->mAnimation:Lcom/canhub/cropper/CropImageAnimation;

    .line 1285
    :cond_8
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mAnimation:Lcom/canhub/cropper/CropImageAnimation;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v7}, Lcom/canhub/cropper/CropImageAnimation;->setStartState([FLandroid/graphics/Matrix;)V

    .line 1287
    :cond_9
    iput v5, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 1288
    int-to-float v3, v0

    int-to-float v4, v1

    invoke-direct {p0, v3, v4, v6, p2}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1291
    .end local v5    # "newZoom":F
    :cond_a
    :goto_0
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mOnSetCropWindowChangeListener:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    if-eqz v3, :cond_b

    if-nez p1, :cond_b

    .line 1292
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mOnSetCropWindowChangeListener:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;->onCropWindowChanged()V

    .line 1295
    .end local v2    # "cropRect":Landroid/graphics/RectF;
    :cond_b
    return-void
.end method

.method private final mapImagePointsByImageMatrix()V
    .locals 11

    .line 1421
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1422
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 1423
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 1424
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 1425
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    .line 1426
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    .line 1427
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    const/4 v6, 0x6

    aput v2, v0, v6

    .line 1428
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    .line 1429
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1430
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v2, v0, v1

    .line 1431
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v2, v0, v3

    .line 1432
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v5

    .line 1433
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v2, v0, v4

    .line 1434
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v1, v0, v7

    .line 1435
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v1, v0, v8

    .line 1436
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v2, v0, v6

    .line 1437
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    aput v1, v0, v10

    .line 1438
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1439
    return-void
.end method

.method private final setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageResource"    # I
    .param p3, "imageUri"    # Landroid/net/Uri;
    .param p4, "loadSampleSize"    # I
    .param p5, "degreesRotated"    # I

    .line 924
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    :cond_0
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->clearImageInt()V

    .line 926
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 927
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 928
    iput-object p3, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    .line 929
    iput p2, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    .line 930
    iput p4, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    .line 931
    iput p5, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 932
    nop

    .line 933
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 934
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 935
    nop

    .line 936
    nop

    .line 932
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 938
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 940
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setCropOverlayVisibility()V

    .line 943
    :cond_1
    return-void
.end method

.method private final setCropOverlayVisibility()V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    .line 1447
    iget-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 1446
    :goto_0
    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setVisibility(I)V

    .line 1449
    :cond_1
    return-void
.end method

.method private final setProgressBarVisibility()V
    .locals 3

    .line 1456
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1458
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1455
    :goto_0
    nop

    .line 1462
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 1463
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    .line 1462
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1464
    return-void
.end method

.method private final updateImageBounds(Z)V
    .locals 5
    .param p1, "clear"    # Z

    .line 1468
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1472
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectWidth([F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1471
    nop

    .line 1474
    .local v0, "scaleFactorWidth":F
    iget v2, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mScaleImagePoints:[F

    invoke-virtual {v1, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectHeight([F)F

    move-result v1

    div-float/2addr v2, v1

    .line 1473
    move v1, v2

    .line 1475
    .local v1, "scaleFactorHeight":F
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1476
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1475
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowLimits(FFFF)V

    .line 1480
    .end local v0    # "scaleFactorWidth":F
    .end local v1    # "scaleFactorHeight":F
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mImagePoints:[F

    :goto_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/canhub/cropper/CropOverlayView;->setBounds([FII)V

    .line 1481
    return-void
.end method


# virtual methods
.method public final clearAspectRatio()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 369
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 371
    return-void
.end method

.method public final clearImage()V
    .locals 2

    .line 750
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->clearImageInt()V

    .line 751
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 752
    :goto_0
    return-void
.end method

.method public final croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V
    .locals 7
    .param p1, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "saveCompressQuality"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I
    .param p5, "options"    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
    .param p6, "customOutputUri"    # Landroid/net/Uri;

    const-string/jumbo v0, "saveCompressFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v0, :cond_0

    .line 650
    nop

    .line 651
    nop

    .line 652
    nop

    .line 653
    nop

    .line 654
    nop

    .line 655
    nop

    .line 656
    nop

    .line 650
    move-object v0, p0

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/canhub/cropper/CropImageView;->startCropWorkerTask(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    .line 658
    return-void

    .line 1986
    :cond_0
    const/4 v0, 0x0

    .line 649
    .local v0, "$i$a$-requireNotNull-CropImageView$croppedImageAsync$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-CropImageView$croppedImageAsync$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mOnCropImageCompleteListener is not set"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flipImageHorizontally()V
    .locals 4

    .line 840
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 841
    nop

    .line 842
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 843
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 844
    nop

    .line 845
    nop

    .line 841
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 847
    return-void
.end method

.method public final flipImageVertically()V
    .locals 4

    .line 851
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 852
    nop

    .line 853
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 854
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 855
    nop

    .line 856
    nop

    .line 852
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 858
    return-void
.end method

.method public final getAspectRatio()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v0

    return-object v0
.end method

.method public final getCropLabelText()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropTextLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCropLabelTextColor()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextColor:I

    return v0
.end method

.method public final getCropLabelTextSize()F
    .locals 1

    .line 426
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextSize:F

    return v0
.end method

.method public final getCropPoints()[F
    .locals 11

    .line 519
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 521
    .local v0, "cropWindowRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 522
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 521
    nop

    .line 523
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 521
    nop

    .line 524
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 521
    nop

    .line 525
    iget v5, v0, Landroid/graphics/RectF;->right:F

    .line 521
    nop

    .line 526
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 521
    nop

    .line 527
    iget v7, v0, Landroid/graphics/RectF;->left:F

    .line 521
    nop

    .line 528
    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    const/16 v9, 0x8

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    const/4 v1, 0x1

    aput v2, v9, v1

    const/4 v1, 0x2

    aput v3, v9, v1

    const/4 v1, 0x3

    aput v4, v9, v1

    const/4 v1, 0x4

    aput v5, v9, v1

    const/4 v1, 0x5

    aput v6, v9, v1

    const/4 v1, 0x6

    aput v7, v9, v1

    const/4 v1, 0x7

    aput v8, v9, v1

    .line 521
    nop

    .line 520
    move-object v1, v9

    .line 530
    .local v1, "points":[F
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 531
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 532
    array-length v2, v1

    new-array v2, v2, [F

    .line 533
    .local v2, "resultPoints":[F
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 534
    aget v5, v1, v3

    iget v6, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    aput v5, v2, v3

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 536
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 12

    .line 480
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    .line 481
    .local v0, "loadedSampleSize":I
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 483
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v9

    .line 484
    .local v9, "points":[F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v10, v2, v0

    .line 485
    .local v10, "orgWidth":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v11, v2, v0

    .line 487
    .local v11, "orgHeight":I
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 488
    nop

    .line 489
    nop

    .line 490
    nop

    .line 491
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v6

    .line 492
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v7

    .line 493
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v8

    .line 487
    move-object v3, v9

    move v4, v10

    move v5, v11

    invoke-virtual/range {v2 .. v8}, Lcom/canhub/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v0

    return-object v0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCroppedImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 562
    const/4 v0, 0x0

    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v0, v0, v1}, Lcom/canhub/cropper/CropImageView;->getCroppedImage(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getCroppedImage(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 573
    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/canhub/cropper/CropImageView;->getCroppedImage(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getCroppedImage(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string/jumbo v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    const/4 v2, 0x0

    .line 586
    .local v2, "croppedBitmap":Landroid/graphics/Bitmap;
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 587
    sget-object v3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    move/from16 v3, p1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 588
    .local v3, "newReqWidth":I
    :goto_0
    sget-object v5, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq v1, v5, :cond_1

    move/from16 v4, p2

    .line 589
    .local v4, "newReqHeight":I
    :cond_1
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 590
    iget v5, v0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    sget-object v5, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne v1, v5, :cond_3

    .line 592
    :cond_2
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, v0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    mul-int v19, v5, v6

    .line 593
    .local v19, "orgWidth":I
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    mul-int v20, v5, v6

    .line 594
    .local v20, "orgHeight":I
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v8

    .line 599
    iget v9, v0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 600
    nop

    .line 601
    nop

    .line 602
    iget-object v10, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v12

    .line 603
    iget-object v10, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v10}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v13

    .line 604
    iget-object v10, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v10}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v14

    .line 605
    nop

    .line 606
    nop

    .line 607
    iget-boolean v15, v0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 608
    iget-boolean v11, v0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 595
    move/from16 v10, v19

    move/from16 v18, v11

    move/from16 v11, v20

    move/from16 v17, v15

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v5 .. v18}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v5

    .line 594
    nop

    .line 610
    .local v5, "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .end local v5    # "bitmapSampled":Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .end local v19    # "orgWidth":I
    .end local v20    # "orgHeight":I
    goto :goto_1

    .line 612
    :cond_3
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 614
    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v8

    .line 616
    iget v9, v0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 617
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v10

    .line 618
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v11

    .line 619
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v5}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v12

    .line 620
    iget-boolean v13, v0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 621
    iget-boolean v14, v0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 613
    invoke-virtual/range {v6 .. v14}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v5

    .line 623
    invoke-virtual {v5}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 589
    :goto_1
    move-object v2, v5

    .line 626
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/canhub/cropper/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 625
    move-object v2, v5

    .line 628
    .end local v3    # "newReqWidth":I
    .end local v4    # "newReqHeight":I
    :cond_4
    return-object v2
.end method

.method public final getCustomOutputUri()Landroid/net/Uri;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->customOutputUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object v0

    return-object v0
.end method

.method public final getImageResource()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    return v0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getMaxZoom()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    return v0
.end method

.method public final getRotatedDegrees()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    return v0
.end method

.method public final getScaleType()Lcom/canhub/cropper/CropImageView$ScaleType;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    return-object v0
.end method

.method public final getWholeImageRect()Landroid/graphics/Rect;
    .locals 6

    .line 460
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    .line 461
    .local v0, "loadedSampleSize":I
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 462
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    .line 463
    .local v2, "orgWidth":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v0

    .line 464
    .local v3, "orgHeight":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public final isAutoZoomEnabled()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    return v0
.end method

.method public final isFixAspectRatio()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v0

    return v0
.end method

.method public final isFlippedHorizontally()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    return v0
.end method

.method public final isFlippedVertically()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    return v0
.end method

.method public final isSaveBitmapToInstanceState()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->isSaveBitmapToInstanceState:Z

    return v0
.end method

.method public final isShowCropLabel()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    return v0
.end method

.method public final isShowCropOverlay()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    return v0
.end method

.method public final isShowProgressBar()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    return v0
.end method

.method public onCropWindowChanged(Z)V
    .locals 3
    .param p1, "inProgress"    # Z

    .line 1978
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1979
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mOnCropOverlayReleasedListener:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    .line 1980
    .local v0, "listener":Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;->onCropOverlayReleased(Landroid/graphics/Rect;)V

    .line 1981
    :cond_0
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mOnSetCropOverlayMovedListener:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    .line 1982
    .local v1, "movedListener":Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;->onCropOverlayMoved(Landroid/graphics/Rect;)V

    .line 1983
    :cond_1
    return-void
.end method

.method public final onImageCroppingAsyncComplete(Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;)V
    .locals 13
    .param p1, "result"    # Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;

    .line 893
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setProgressBarVisibility()V

    .line 894
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    .line 895
    .local v0, "listener":Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;
    if-eqz v0, :cond_0

    .line 896
    new-instance v12, Lcom/canhub/cropper/CropImageView$CropResult;

    .line 897
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 898
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    .line 899
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 900
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 901
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getError()Ljava/lang/Exception;

    move-result-object v6

    .line 902
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    .line 903
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 904
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 905
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v10

    .line 906
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$Result;->getSampleSize()I

    move-result v11

    .line 896
    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/canhub/cropper/CropImageView$CropResult;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 908
    .local v1, "cropResult":Lcom/canhub/cropper/CropImageView$CropResult;
    invoke-interface {v0, p0, v1}, Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;->onCropImageComplete(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView$CropResult;)V

    .line 910
    .end local v1    # "cropResult":Lcom/canhub/cropper/CropImageView$CropResult;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1182
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1183
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mLayoutWidth:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mLayoutHeight:I

    if-lez v0, :cond_5

    .line 1185
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1186
    .local v0, "origParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/canhub/cropper/CropImageView;->mLayoutWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1187
    iget v2, p0, Lcom/canhub/cropper/CropImageView;->mLayoutHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1188
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1190
    nop

    .line 1191
    sub-int v2, p4, p2

    int-to-float v2, v2

    sub-int v3, p5, p3

    int-to-float v3, v3

    .line 1192
    nop

    .line 1193
    nop

    .line 1190
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1197
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 1198
    .local v2, "restoreCropWindowRect":Landroid/graphics/RectF;
    if-eqz v2, :cond_3

    .line 1199
    iget v3, p0, Lcom/canhub/cropper/CropImageView;->mRestoreDegreesRotated:I

    iget v5, p0, Lcom/canhub/cropper/CropImageView;->mInitialDegreesRotated:I

    if-eq v3, v5, :cond_0

    .line 1200
    iget v3, p0, Lcom/canhub/cropper/CropImageView;->mRestoreDegreesRotated:I

    iput v3, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 1201
    nop

    .line 1202
    sub-int v3, p4, p2

    int-to-float v3, v3

    .line 1203
    sub-int v5, p5, p3

    int-to-float v5, v5

    .line 1204
    nop

    .line 1205
    nop

    .line 1201
    invoke-direct {p0, v3, v5, v1, v4}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 1207
    iput v4, p0, Lcom/canhub/cropper/CropImageView;->mRestoreDegreesRotated:I

    .line 1209
    :cond_0
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1210
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1211
    :goto_0
    invoke-direct {p0, v4, v4}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 1212
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    .line 1213
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/canhub/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    goto :goto_1

    .line 1214
    :cond_3
    iget-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->mSizeChanged:Z

    if-eqz v1, :cond_6

    .line 1215
    iput-boolean v4, p0, Lcom/canhub/cropper/CropImageView;->mSizeChanged:Z

    .line 1216
    invoke-direct {p0, v4, v4}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .end local v2    # "restoreCropWindowRect":Landroid/graphics/RectF;
    goto :goto_1

    .line 1218
    :cond_4
    invoke-direct {p0, v1}, Lcom/canhub/cropper/CropImageView;->updateImageBounds(Z)V

    .end local v0    # "origParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1

    .line 1219
    :cond_5
    invoke-direct {p0, v1}, Lcom/canhub/cropper/CropImageView;->updateImageBounds(Z)V

    .line 1220
    :cond_6
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1136
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1137
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1138
    .local v1, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1139
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1140
    .local v3, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1141
    .local v4, "heightSize":I
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 1142
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_8

    .line 1144
    if-nez v4, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :cond_0
    const/4 v6, 0x0

    .local v6, "desiredWidth":I
    const/4 v7, 0x0

    .line 1147
    .local v7, "desiredHeight":I
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1148
    .local v8, "viewToBitmapWidthRatio":D
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1150
    .local v10, "viewToBitmapHeightRatio":D
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 1151
    int-to-double v12, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 1153
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 1154
    int-to-double v12, v4

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-double v14, v14

    div-double v10, v12, v14

    .line 1157
    :cond_2
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v14, v8, v12

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-nez v14, :cond_3

    move v14, v15

    goto :goto_0

    :cond_3
    move/from16 v14, v16

    :goto_0
    if-eqz v14, :cond_6

    .line 1158
    cmpg-double v12, v10, v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v15, v16

    :goto_1
    if-nez v15, :cond_5

    goto :goto_2

    .line 1170
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1171
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    goto :goto_3

    .line 1160
    :cond_6
    :goto_2
    cmpg-double v12, v8, v10

    if-gtz v12, :cond_7

    .line 1161
    move v6, v2

    .line 1162
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v8

    double-to-int v7, v12

    goto :goto_3

    .line 1164
    :cond_7
    move v7, v4

    .line 1165
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v10

    double-to-int v6, v12

    .line 1173
    :goto_3
    sget-object v12, Lcom/canhub/cropper/CropImageView;->Companion:Lcom/canhub/cropper/CropImageView$Companion;

    invoke-static {v12, v1, v2, v6}, Lcom/canhub/cropper/CropImageView$Companion;->access$getOnMeasureSpec(Lcom/canhub/cropper/CropImageView$Companion;III)I

    move-result v12

    .line 1174
    .local v12, "width":I
    sget-object v13, Lcom/canhub/cropper/CropImageView;->Companion:Lcom/canhub/cropper/CropImageView$Companion;

    invoke-static {v13, v3, v4, v7}, Lcom/canhub/cropper/CropImageView$Companion;->access$getOnMeasureSpec(Lcom/canhub/cropper/CropImageView$Companion;III)I

    move-result v13

    .line 1175
    .local v13, "height":I
    iput v12, v0, Lcom/canhub/cropper/CropImageView;->mLayoutWidth:I

    .line 1176
    iput v13, v0, Lcom/canhub/cropper/CropImageView;->mLayoutHeight:I

    .line 1177
    iget v14, v0, Lcom/canhub/cropper/CropImageView;->mLayoutWidth:I

    iget v15, v0, Lcom/canhub/cropper/CropImageView;->mLayoutHeight:I

    invoke-virtual {v0, v14, v15}, Lcom/canhub/cropper/CropImageView;->setMeasuredDimension(II)V

    .end local v6    # "desiredWidth":I
    .end local v7    # "desiredHeight":I
    .end local v8    # "viewToBitmapWidthRatio":D
    .end local v10    # "viewToBitmapHeightRatio":D
    .end local v12    # "width":I
    .end local v13    # "height":I
    goto :goto_4

    .line 1178
    :cond_8
    invoke-virtual {v0, v2, v4}, Lcom/canhub/cropper/CropImageView;->setMeasuredDimension(II)V

    .line 1179
    :goto_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 14
    .param p1, "state"    # Landroid/os/Parcelable;

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 1082
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    if-nez v0, :cond_b

    .line 1083
    const/4 v0, 0x0

    .local v0, "uri":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "LOADED_IMAGE_URI"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_4

    .line 1085
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_3

    move-object v2, v1

    .local v2, "$this$onRestoreInstanceState_u24lambda_u2d2":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1087
    .local v3, "$i$a$-run-CropImageView$onRestoreInstanceState$1":I
    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v4}, Lcom/canhub/cropper/BitmapUtils;->getMStateBitmap()Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .local v4, "it":Landroid/util/Pair;
    const/4 v6, 0x0

    .line 1088
    .local v6, "$i$a$-let-CropImageView$onRestoreInstanceState$1$stateBitmap$1":I
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v7, v5

    .line 1087
    .end local v4    # "it":Landroid/util/Pair;
    .end local v6    # "$i$a$-let-CropImageView$onRestoreInstanceState$1$stateBitmap$1":I
    :goto_0
    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    move-object v4, v7

    .line 1090
    .local v4, "stateBitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v6, v5}, Lcom/canhub/cropper/BitmapUtils;->setMStateBitmap(Landroid/util/Pair;)V

    .line 1091
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1092
    move-object v11, v0

    check-cast v11, Landroid/net/Uri;

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, p0

    move-object v9, v4

    invoke-direct/range {v8 .. v13}, Lcom/canhub/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 1094
    :cond_2
    nop

    .line 1086
    .end local v2    # "$this$onRestoreInstanceState_u24lambda_u2d2":Ljava/lang/String;
    .end local v3    # "$i$a$-run-CropImageView$onRestoreInstanceState$1":I
    .end local v4    # "stateBitmap":Landroid/graphics/Bitmap;
    nop

    .line 1095
    :cond_3
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    if-nez v2, :cond_6

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    .line 1097
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1099
    .local v1, "resId":I
    if-lez v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageView;->setImageResource(I)V

    goto :goto_2

    .line 1101
    :cond_5
    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "LOADING_IMAGE_URI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1102
    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_6

    .line 1986
    .local v2, "it":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1102
    .local v3, "$i$a$-let-CropImageView$onRestoreInstanceState$2":I
    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    .line 1105
    .end local v1    # "resId":I
    .end local v2    # "it":Landroid/net/Uri;
    .end local v3    # "$i$a$-let-CropImageView$onRestoreInstanceState$2":I
    :cond_6
    :goto_2
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mRestoreDegreesRotated:I

    .line 1106
    iget v1, p0, Lcom/canhub/cropper/CropImageView;->mRestoreDegreesRotated:I

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 1107
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "INITIAL_CROP_RECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1108
    .local v1, "initialCropRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_8

    .line 1109
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_8

    .line 1111
    :cond_7
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1113
    :cond_8
    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "CROP_WINDOW_RECT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1114
    .local v2, "cropWindowRect":Landroid/graphics/RectF;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    .line 1115
    :cond_9
    iput-object v2, p0, Lcom/canhub/cropper/CropImageView;->mRestoreCropWindowRect:Landroid/graphics/RectF;

    .line 1117
    :cond_a
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1119
    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "CROP_SHAPE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1118
    invoke-static {v4}, Lcom/canhub/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v4

    .line 1117
    invoke-virtual {v3, v4}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    .line 1122
    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 1123
    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CROP_MAX_ZOOM"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    .line 1124
    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1125
    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CROP_FLIP_VERTICALLY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 1126
    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "SHOW_CROP_LABEL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    .line 1127
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    iget-boolean v4, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    .line 1129
    .end local v0    # "uri":Ljava/lang/Object;
    .end local v1    # "initialCropRect":Landroid/graphics/Rect;
    .end local v2    # "cropWindowRect":Landroid/graphics/RectF;
    :cond_b
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_3

    .line 1131
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1133
    :goto_3
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1035
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    if-ge v0, v1, :cond_0

    .line 1036
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1038
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1040
    .local v0, "bundle":Landroid/os/Bundle;
    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->isSaveBitmapToInstanceState:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    if-ge v2, v1, :cond_1

    .line 1041
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 1042
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 1044
    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->customOutputUri:Landroid/net/Uri;

    .line 1041
    invoke-virtual {v1, v2, v3, v4}, Lcom/canhub/cropper/BitmapUtils;->writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1047
    :cond_1
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    .line 1040
    :goto_0
    nop

    .line 1039
    nop

    .line 1049
    .local v1, "loadedImageUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1050
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "randomUUID().toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->setMStateBitmap(Landroid/util/Pair;)V

    .line 1052
    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 1055
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    .line 1056
    .local v2, "task":Lcom/canhub/cropper/BitmapLoadingWorkerJob;
    if-eqz v2, :cond_3

    .line 1057
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->getUri()Landroid/net/Uri;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    const-string v4, "LOADING_IMAGE_URI"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1060
    .end local v2    # "task":Lcom/canhub/cropper/BitmapLoadingWorkerJob;
    :cond_3
    const-string v2, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1061
    const-string v2, "LOADED_IMAGE_URI"

    move-object v3, v1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1062
    const-string v2, "LOADED_IMAGE_RESOURCE"

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->mImageResource:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1063
    const-string v2, "LOADED_SAMPLE_SIZE"

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1064
    const-string v2, "DEGREES_ROTATED"

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1065
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "INITIAL_CROP_RECT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1066
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1067
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1068
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v3}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1069
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "CROP_WINDOW_RECT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1070
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropImageView$CropShape;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CROP_SHAPE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v2, "CROP_AUTO_ZOOM_ENABLED"

    iget-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    const-string v2, "CROP_MAX_ZOOM"

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1073
    const-string v2, "CROP_FLIP_HORIZONTALLY"

    iget-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1074
    const-string v2, "CROP_FLIP_VERTICALLY"

    iget-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1075
    const-string v2, "SHOW_CROP_LABEL"

    iget-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1076
    move-object v2, v0

    check-cast v2, Landroid/os/Parcelable;

    return-object v2
.end method

.method public final onSetImageUriAsyncComplete(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;)V
    .locals 7
    .param p1, "result"    # Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    .line 868
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setProgressBarVisibility()V

    .line 869
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 870
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getDegreesRotated()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mInitialDegreesRotated:I

    .line 871
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getFlipHorizontally()Z

    move-result v0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 872
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getFlipVertically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 873
    nop

    .line 874
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 875
    nop

    .line 876
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getUriContent()Landroid/net/Uri;

    move-result-object v4

    .line 877
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getLoadSampleSize()I

    move-result v5

    .line 878
    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getDegreesRotated()I

    move-result v6

    .line 873
    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    .line 882
    .local v0, "listener":Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getUriContent()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;->onSetImageUriComplete(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 883
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1228
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mSizeChanged:Z

    .line 1229
    return-void
.end method

.method public final resetCropRect()V
    .locals 3

    .line 541
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    .line 543
    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    .line 544
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mInitialDegreesRotated:I

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 546
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 547
    nop

    .line 548
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 549
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 550
    nop

    .line 551
    nop

    .line 547
    invoke-direct {p0, v1, v2, v0, v0}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 553
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->resetCropWindowRect()V

    .line 554
    return-void
.end method

.method public final rotateImage(I)V
    .locals 18
    .param p1, "degrees"    # I

    .line 761
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 764
    if-gez v1, :cond_0

    rem-int/lit16 v2, v1, 0x168

    add-int/lit16 v2, v2, 0x168

    goto :goto_0

    .line 765
    :cond_0
    rem-int/lit16 v2, v1, 0x168

    .line 764
    :goto_0
    nop

    .line 763
    nop

    .line 767
    .local v2, "newDegrees":I
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_4

    .line 768
    const/16 v3, 0x2e

    if-gt v3, v2, :cond_1

    const/16 v3, 0x87

    if-ge v2, v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-nez v3, :cond_3

    const/16 v3, 0xd8

    if-gt v3, v2, :cond_2

    const/16 v3, 0x131

    if-ge v2, v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    :cond_3
    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v5

    .line 766
    :goto_3
    nop

    .line 771
    .local v3, "flipAxes":Z
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v6}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v6

    iget-object v7, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 773
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v6}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v3, :cond_5

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 772
    nop

    .line 775
    .local v6, "halfWidth":F
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v3, :cond_6

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    :goto_5
    div-float/2addr v8, v7

    .line 774
    move v7, v8

    .line 777
    .local v7, "halfHeight":F
    if-eqz v3, :cond_7

    .line 778
    iget-boolean v8, v0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 779
    .local v8, "isFlippedHorizontally":Z
    iget-boolean v9, v0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    iput-boolean v9, v0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 780
    iput-boolean v8, v0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 782
    .end local v8    # "isFlippedHorizontally":Z
    :cond_7
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 783
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v8

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v9}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    aput v9, v8, v5

    .line 784
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v8

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v9}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    aput v9, v8, v4

    .line 785
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 786
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v8

    const/4 v11, 0x3

    aput v10, v8, v11

    .line 787
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v8

    const/4 v12, 0x4

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v8, v12

    .line 788
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v8

    const/4 v14, 0x5

    aput v10, v8, v14

    .line 789
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mImageInverseMatrix:Landroid/graphics/Matrix;

    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v10}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 791
    iget v8, v0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    add-int/2addr v8, v2

    rem-int/lit16 v8, v8, 0x168

    iput v8, v0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 792
    nop

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 795
    nop

    .line 796
    nop

    .line 792
    invoke-direct {v0, v8, v10, v4, v5}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 799
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v10}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v10

    sget-object v15, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v15}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v15

    invoke-virtual {v8, v10, v15}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 800
    iget v8, v0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 801
    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v10}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v10

    aget v10, v10, v12

    sget-object v15, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v15}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v15

    aget v15, v15, v9

    sub-float/2addr v10, v15

    float-to-double v9, v10

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    .line 802
    sget-object v16, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual/range {v16 .. v16}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v16

    aget v16, v16, v14

    sget-object v17, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual/range {v17 .. v17}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v17

    aget v17, v17, v11

    sub-float v15, v16, v17

    float-to-double v14, v15

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 801
    add-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 803
    double-to-float v9, v9

    .line 800
    div-float/2addr v8, v9

    iput v8, v0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 804
    iget v8, v0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 805
    nop

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 808
    nop

    .line 809
    nop

    .line 805
    const/4 v10, 0x1

    const/4 v13, 0x0

    invoke-direct {v0, v8, v9, v10, v13}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 811
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mImageMatrix:Landroid/graphics/Matrix;

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v9}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v10}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS()[F

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 813
    nop

    .line 814
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v8

    aget v8, v8, v12

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v9}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    const/4 v10, 0x2

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 815
    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v10}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v10

    const/4 v12, 0x5

    aget v10, v10, v12

    sget-object v12, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v12}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v12

    aget v11, v12, v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 814
    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 813
    nop

    .line 817
    .local v4, "change":D
    double-to-float v8, v4

    mul-float/2addr v6, v8

    .line 818
    double-to-float v8, v4

    mul-float/2addr v7, v8

    .line 821
    sget-object v8, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v8}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v8

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v9}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v9, v6

    sget-object v11, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v11}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v11

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v11, v7

    sget-object v13, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v13}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v13

    aget v13, v13, v10

    add-float/2addr v13, v6

    .line 822
    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v10}, Lcom/canhub/cropper/BitmapUtils;->getPOINTS2()[F

    move-result-object v10

    aget v10, v10, v12

    add-float/2addr v10, v7

    .line 821
    invoke-virtual {v8, v9, v11, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 823
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v8}, Lcom/canhub/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 824
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    sget-object v9, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v9}, Lcom/canhub/cropper/BitmapUtils;->getRECT()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 825
    nop

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 828
    nop

    .line 829
    nop

    .line 825
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 831
    invoke-direct {v0, v11, v11}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 834
    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v8}, Lcom/canhub/cropper/CropOverlayView;->fixCurrentCropWindowRect()V

    .line 836
    .end local v2    # "newDegrees":I
    .end local v3    # "flipAxes":Z
    .end local v4    # "change":D
    .end local v6    # "halfWidth":F
    .end local v7    # "halfHeight":F
    :cond_8
    return-void
.end method

.method public final setAspectRatio(II)V
    .locals 1
    .param p1, "aspectRatioX"    # I
    .param p2, "aspectRatioY"    # I

    .line 361
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 362
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0, p2}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 364
    return-void
.end method

.method public final setAutoZoomEnabled(Z)V
    .locals 1
    .param p1, "autoZoomEnabled"    # Z

    .line 231
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    if-eq v0, p1, :cond_0

    .line 232
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->mAutoZoomEnabled:Z

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 234
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 236
    :cond_0
    return-void
.end method

.method public final setCenterMoveEnabled(Z)V
    .locals 1
    .param p1, "centerMoveEnabled"    # Z

    .line 248
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCenterMoveEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 250
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 252
    :cond_0
    return-void
.end method

.method public final setCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 1
    .param p1, "cornerShape"    # Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 224
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V

    .line 225
    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 1
    .param p1, "cropLabelText"    # Ljava/lang/String;

    const-string v0, "cropLabelText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mCropTextLabel:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelText(Ljava/lang/String;)V

    .line 424
    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 1
    .param p1, "cropLabelTextColor"    # I

    .line 434
    iput p1, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextColor:I

    .line 435
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextColor(I)V

    .line 436
    :cond_0
    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 428
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropLabelTextSize()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mCropLabelTextSize:F

    .line 429
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextSize(F)V

    .line 430
    :cond_0
    return-void
.end method

.method public final setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 497
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 498
    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 1
    .param p1, "cropShape"    # Lcom/canhub/cropper/CropImageView$CropShape;

    .line 215
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    .line 216
    return-void
.end method

.method public final setCustomOutputUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/net/Uri;

    .line 322
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->customOutputUri:Landroid/net/Uri;

    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .line 304
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 305
    return-void
.end method

.method public final setFlippedHorizontally(Z)V
    .locals 4
    .param p1, "flipHorizontally"    # Z

    .line 311
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    if-eq v0, p1, :cond_0

    .line 312
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 313
    nop

    .line 314
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 315
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 316
    nop

    .line 317
    nop

    .line 313
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 320
    :cond_0
    return-void
.end method

.method public final setFlippedVertically(Z)V
    .locals 4
    .param p1, "flipVertically"    # Z

    .line 328
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    if-eq v0, p1, :cond_0

    .line 329
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 330
    nop

    .line 331
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 332
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 333
    nop

    .line 334
    nop

    .line 330
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/canhub/cropper/CropImageView;->applyImageMatrix(FFZZ)V

    .line 337
    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 1
    .param p1, "guidelines"    # Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 346
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V

    .line 347
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 697
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 698
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/canhub/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 699
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "exif"    # Landroidx/exifinterface/media/ExifInterface;

    const/4 v0, 0x0

    .line 712
    .local v0, "setBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 713
    .local v1, "degreesRotated":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 714
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v2, p1, p2}, Lcom/canhub/cropper/BitmapUtils;->orientateBitmapByExif(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object v2

    .line 715
    .local v2, "result":Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getDegrees()I

    move-result v1

    .line 717
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getFlipHorizontally()Z

    move-result v3

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 718
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getFlipVertically()Z

    move-result v3

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 719
    invoke-virtual {v2}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;->getDegrees()I

    move-result v3

    iput v3, p0, Lcom/canhub/cropper/CropImageView;->mInitialDegreesRotated:I

    .end local v2    # "result":Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    goto :goto_0

    .line 720
    :cond_0
    move-object v0, p1

    .line 722
    :goto_0
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 723
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/canhub/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 724
    return-void
.end method

.method public final setImageResource(I)V
    .locals 7
    .param p1, "resId"    # I

    .line 446
    if-eqz p1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 448
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->setBitmap(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 451
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public final setImageUriAsync(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 734
    if-eqz p1, :cond_2

    .line 736
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 735
    :goto_0
    nop

    .line 737
    .local v0, "currentTask":Lcom/canhub/cropper/BitmapLoadingWorkerJob;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->cancel()V

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->clearImageInt()V

    .line 740
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 741
    nop

    .line 742
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;-><init>(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 741
    iput-object v1, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    .line 743
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->bitmapLoadingWorkerJob:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->start()V

    .line 744
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setProgressBarVisibility()V

    .line 746
    .end local v0    # "currentTask":Lcom/canhub/cropper/BitmapLoadingWorkerJob;
    :cond_2
    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .line 278
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;->setMaxCropResultSize(II)V

    .line 279
    return-void
.end method

.method public final setMaxZoom(I)V
    .locals 1
    .param p1, "maxZoom"    # I

    .line 258
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 259
    iput p1, p0, Lcom/canhub/cropper/CropImageView;->mMaxZoom:I

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 261
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 263
    :cond_0
    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .line 270
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;->setMinCropResultSize(II)V

    .line 271
    return-void
.end method

.method public final setMultiTouchEnabled(Z)V
    .locals 1
    .param p1, "multiTouchEnabled"    # Z

    .line 240
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/canhub/cropper/CropImageView;->handleCropWindowChanged(ZZ)V

    .line 242
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 244
    :cond_0
    return-void
.end method

.method public final setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    .line 688
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mOnCropImageCompleteListener:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    .line 689
    return-void
.end method

.method public final setOnCropWindowChangedListener(Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    .line 672
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mOnSetCropWindowChangeListener:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    .line 673
    return-void
.end method

.method public final setOnSetCropOverlayMovedListener(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    .line 667
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mOnSetCropOverlayMovedListener:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    .line 668
    return-void
.end method

.method public final setOnSetCropOverlayReleasedListener(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    .line 662
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mOnCropOverlayReleasedListener:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    .line 663
    return-void
.end method

.method public final setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    .line 680
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mOnSetImageUriCompleteListener:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    .line 681
    return-void
.end method

.method public final setRotatedDegrees(I)V
    .locals 1
    .param p1, "degrees"    # I

    .line 287
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    if-eq v0, p1, :cond_0

    .line 288
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->rotateImage(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public final setSaveBitmapToInstanceState(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->isSaveBitmapToInstanceState:Z

    return-void
.end method

.method public final setScaleType(Lcom/canhub/cropper/CropImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/canhub/cropper/CropImageView$ScaleType;

    const-string/jumbo v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-eq p1, v0, :cond_1

    .line 191
    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->mScaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mZoom:F

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    .line 194
    iget v0, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetY:F

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->mZoomOffsetX:F

    .line 195
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->resetCropOverlayView()V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->requestLayout()V

    .line 198
    :cond_1
    return-void
.end method

.method public final setShowCropLabel(Z)V
    .locals 2
    .param p1, "showCropLabel"    # Z

    .line 414
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    if-eq v0, p1, :cond_0

    .line 415
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    .line 416
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->mShowCropLabel:Z

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    .line 418
    :cond_0
    return-void
.end method

.method public final setShowCropOverlay(Z)V
    .locals 1
    .param p1, "showCropOverlay"    # Z

    .line 403
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    if-eq v0, p1, :cond_0

    .line 404
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->mShowCropOverlay:Z

    .line 405
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setCropOverlayVisibility()V

    .line 407
    :cond_0
    return-void
.end method

.method public final setShowProgressBar(Z)V
    .locals 1
    .param p1, "showProgressBar"    # Z

    .line 389
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    if-eq v0, p1, :cond_0

    .line 390
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->mShowProgressBar:Z

    .line 391
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView;->setProgressBarVisibility()V

    .line 393
    :cond_0
    return-void
.end method

.method public final setSnapRadius(F)V
    .locals 1
    .param p1, "snapRadius"    # F

    .line 379
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 380
    :cond_0
    return-void
.end method

.method public final startCropWorkerTask(IILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V
    .locals 30
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I
    .param p3, "options"    # Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
    .param p4, "saveCompressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "saveCompressQuality"    # I
    .param p6, "customOutputUri"    # Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    const-string/jumbo v1, "options"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "saveCompressFormat"

    move-object/from16 v14, p4

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    iget-object v13, v0, Lcom/canhub/cropper/CropImageView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 995
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_7

    .line 997
    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 996
    :goto_0
    move-object/from16 v21, v1

    .line 998
    .local v21, "currentTask":Lcom/canhub/cropper/BitmapCroppingWorkerJob;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->cancel()V

    .line 1001
    :cond_1
    iget v1, v0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_3

    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne v15, v1, :cond_2

    goto :goto_1

    .line 1003
    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1002
    :cond_3
    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v4, v0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    mul-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v0, Lcom/canhub/cropper/CropImageView;->loadedSampleSize:I

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1001
    :goto_2
    nop

    .line 1000
    move-object v2, v1

    .local v2, "$this$component1$iv":Landroid/util/Pair;
    const/4 v4, 0x0

    .line 1987
    .local v4, "$i$f$component1":I
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1000
    .end local v2    # "$this$component1$iv":Landroid/util/Pair;
    .end local v4    # "$i$f$component1":I
    move-object v12, v2

    check-cast v12, Ljava/lang/Integer;

    .line 1001
    .local v12, "orgWidth":Ljava/lang/Integer;
    nop

    .line 1000
    nop

    .local v1, "$this$component2$iv":Landroid/util/Pair;
    const/4 v2, 0x0

    .line 1988
    .local v2, "$i$f$component2":I
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1000
    .end local v1    # "$this$component2$iv":Landroid/util/Pair;
    .end local v2    # "$i$f$component2":I
    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    .line 1005
    .local v11, "orgHeight":Ljava/lang/Integer;
    new-instance v10, Ljava/lang/ref/WeakReference;

    .line 1006
    new-instance v9, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1009
    iget-object v5, v0, Lcom/canhub/cropper/CropImageView;->imageUri:Landroid/net/Uri;

    .line 1010
    nop

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    .line 1012
    iget v7, v0, Lcom/canhub/cropper/CropImageView;->mDegreesRotated:I

    .line 1013
    const-string/jumbo v1, "orgWidth"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1014
    const-string/jumbo v1, "orgHeight"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1015
    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio()Z

    move-result v17

    .line 1016
    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v18

    .line 1017
    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->mCropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v19

    .line 1018
    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq v15, v1, :cond_4

    move/from16 v20, p1

    goto :goto_3

    :cond_4
    move/from16 v20, v3

    .line 1019
    :goto_3
    sget-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq v15, v1, :cond_5

    move/from16 v22, p2

    goto :goto_4

    :cond_5
    move/from16 v22, v3

    .line 1020
    :goto_4
    iget-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->mFlipHorizontally:Z

    .line 1021
    iget-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->mFlipVertically:Z

    .line 1022
    nop

    .line 1023
    nop

    .line 1024
    nop

    .line 1025
    if-nez p6, :cond_6

    move/from16 v23, v1

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->customOutputUri:Landroid/net/Uri;

    move-object/from16 v24, v1

    goto :goto_5

    :cond_6
    move/from16 v23, v1

    move-object/from16 v24, p6

    .line 1006
    :goto_5
    move-object v1, v9

    move/from16 v25, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v13

    move-object v0, v9

    move/from16 v9, v16

    move-object/from16 v26, v10

    move/from16 v10, v17

    move-object/from16 v27, v11

    .end local v11    # "orgHeight":Ljava/lang/Integer;
    .local v27, "orgHeight":Ljava/lang/Integer;
    move/from16 v11, v18

    move-object/from16 v28, v12

    .end local v12    # "orgWidth":Ljava/lang/Integer;
    .local v28, "orgWidth":Ljava/lang/Integer;
    move/from16 v12, v19

    move-object/from16 v29, v13

    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .local v29, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v13, v20

    move/from16 v14, v22

    move/from16 v15, v25

    move/from16 v16, v23

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, v24

    invoke-direct/range {v1 .. v20}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    .line 1005
    move-object/from16 v1, v26

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;

    .line 1029
    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->bitmapCroppingWorkerJob:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->start()V

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/canhub/cropper/CropImageView;->setProgressBarVisibility()V

    goto :goto_6

    .line 995
    .end local v21    # "currentTask":Lcom/canhub/cropper/BitmapCroppingWorkerJob;
    .end local v27    # "orgHeight":Ljava/lang/Integer;
    .end local v28    # "orgWidth":Ljava/lang/Integer;
    .end local v29    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v29, v13

    .line 1032
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v29    # "bitmap":Landroid/graphics/Bitmap;
    :goto_6
    return-void
.end method
