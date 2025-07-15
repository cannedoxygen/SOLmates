.class public final Lcom/facebook/imagepipeline/core/ImagePipeline;
.super Ljava/lang/Object;
.source "ImagePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;,
        Lcom/facebook/imagepipeline/core/ImagePipeline$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1046:1\n40#2,9:1047\n40#2,9:1056\n40#2,9:1065\n40#2,9:1074\n40#2,9:1083\n40#2,9:1092\n1#3:1101\n*S KotlinDebug\n*F\n+ 1 ImagePipeline.kt\ncom/facebook/imagepipeline/core/ImagePipeline\n*L\n418#1:1047,9\n550#1:1056,9\n803#1:1065,9\n868#1:1074,9\n906#1:1083,9\n940#1:1092,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 n2\u00020\u0001:\u0001nB\u00b1\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\r\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0002\u0010\u001fJ\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u000205J\u000e\u00108\u001a\u0002052\u0006\u00109\u001a\u00020:J\u0010\u0010;\u001a\u0002052\u0008\u00109\u001a\u0004\u0018\u00010:J\u0010\u0010;\u001a\u0002052\u0008\u0010<\u001a\u0004\u0018\u00010=J\u000e\u0010>\u001a\u0002052\u0006\u00109\u001a\u00020:J&\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001J.\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0006\u0010.\u001a\u00020\u0006J.\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0006\u0010C\u001a\u00020DJV\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0006\u0010C\u001a\u00020D2\u0008\u0010.\u001a\u0004\u0018\u00010\u00062\u0008\u0010E\u001a\u0004\u0018\u00010F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0002\u0008\u0003\u0018\u00010HJJ\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010D2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010FJ$\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110A0@2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001J.\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110A0@2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u0006J$\u0010J\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001J\u0006\u0010K\u001a\u00020FJ\u001c\u0010L\u001a\u0004\u0018\u00010\u000e2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001J\u0018\u0010M\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010A2\u0008\u0010N\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010O\u001a\u00020\u00062\u0008\u0010P\u001a\u0004\u0018\u00010\u0006J4\u0010Q\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@0\n2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010R\u001a\u0004\u0018\u00010DJ>\u0010Q\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@0\n2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010R\u001a\u0004\u0018\u00010D2\u0008\u0010.\u001a\u0004\u0018\u00010\u0006JH\u0010Q\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0A0@0\n2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010R\u001a\u0004\u0018\u00010D2\u0008\u0010.\u001a\u0004\u0018\u00010\u00062\u0008\u0010E\u001a\u0004\u0018\u00010FJ*\u0010S\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110A0@0\n2\u0006\u0010<\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001J\u001a\u0010T\u001a\u00020\u00062\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010.\u001a\u0004\u0018\u00010\u0006J\u0010\u0010U\u001a\u00020\u000b2\u0008\u0010N\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010V\u001a\u000205J\u0010\u0010W\u001a\u00020\u000b2\u0008\u00109\u001a\u0004\u0018\u00010:J\u0010\u0010W\u001a\u00020\u000b2\u0008\u0010<\u001a\u0004\u0018\u00010=J\u0016\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u000b0@2\u0008\u00109\u001a\u0004\u0018\u00010:J\u0016\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u000b0@2\u0008\u0010<\u001a\u0004\u0018\u00010=J\u0010\u0010Y\u001a\u00020\u000b2\u0008\u00109\u001a\u0004\u0018\u00010:J\u001a\u0010Y\u001a\u00020\u000b2\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010Z\u001a\u0004\u0018\u00010[J\u000e\u0010Y\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020=J\u0010\u0010\\\u001a\u00020\u000b2\u0008\u00109\u001a\u0004\u0018\u00010:J\u0010\u0010\\\u001a\u00020\u000b2\u0008\u0010<\u001a\u0004\u0018\u00010=J\u0006\u0010]\u001a\u000205J\u0016\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\u000e0_2\u0006\u00109\u001a\u00020:H\u0002J$\u0010`\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001H\u0007J.\u0010`\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u0006H\u0007J\"\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u0001J*\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0006\u0010c\u001a\u00020dJ6\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0006\u0010c\u001a\u00020d2\u0008\u0010.\u001a\u0004\u0018\u00010\u0006H\u0007J,\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u0006J:\u0010e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010c\u001a\u00020d2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0006H\u0007J,\u0010e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u0006J\u0006\u0010f\u001a\u000205J\\\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0@\"\u0004\u0008\u0000\u0010h2\u0012\u0010i\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0j2\u0006\u0010<\u001a\u00020=2\u0006\u0010C\u001a\u00020D2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u00062\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0002Jp\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0@\"\u0004\u0008\u0000\u0010h2\u0012\u0010i\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0j2\u0006\u0010<\u001a\u00020=2\u0006\u0010C\u001a\u00020D2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u00062\u0008\u0010E\u001a\u0004\u0018\u00010F2\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0002\u0008\u0003\u0018\u00010HH\u0002Jf\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0@\"\u0004\u0008\u0000\u0010h2\u0012\u0010i\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0j2\u0006\u0010<\u001a\u00020=2\u0006\u0010C\u001a\u00020D2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0008\u0010.\u001a\u0004\u0018\u00010\u00062\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0002\u0008\u0003\u0018\u00010HH\u0002J@\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002Hh0A0@\"\u0004\u0008\u0000\u0010h2\u0014\u0010i\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002Hh\u0018\u00010A0j2\u0006\u0010k\u001a\u00020l2\u0008\u0010.\u001a\u0004\u0018\u00010\u0006JL\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0@2\u000e\u0010i\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0j2\u0006\u0010<\u001a\u00020=2\u0006\u0010C\u001a\u00020D2\u0008\u0010B\u001a\u0004\u0018\u00010\u00012\u0006\u0010c\u001a\u00020d2\u0008\u0010.\u001a\u0004\u0018\u00010\u0006H\u0002R\u001d\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00110\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u000e\u0010.\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u00100\u001a\u0002018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u00a8\u0006o"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/core/ImagePipeline;",
        "",
        "producerSequenceFactory",
        "Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
        "requestListeners",
        "",
        "Lcom/facebook/imagepipeline/listener/RequestListener;",
        "requestListener2s",
        "Lcom/facebook/imagepipeline/listener/RequestListener2;",
        "isPrefetchEnabledSupplier",
        "Lcom/facebook/common/internal/Supplier;",
        "",
        "bitmapMemoryCache",
        "Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "Lcom/facebook/cache/common/CacheKey;",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        "encodedMemoryCache",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        "mainBufferedDiskCache",
        "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
        "smallImageBufferedDiskCache",
        "cacheKeyFactory",
        "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "threadHandoffProducerQueue",
        "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
        "suppressBitmapPrefetchingSupplier",
        "lazyDataSource",
        "callerContextVerifier",
        "Lcom/facebook/callercontext/CallerContextVerifier;",
        "config",
        "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/callercontext/CallerContextVerifier;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V",
        "getBitmapMemoryCache",
        "()Lcom/facebook/imagepipeline/cache/MemoryCache;",
        "getCacheKeyFactory",
        "()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
        "getConfig",
        "()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
        "idCounter",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "isLazyDataSource",
        "()Lcom/facebook/common/internal/Supplier;",
        "isPaused",
        "()Z",
        "getProducerSequenceFactory",
        "()Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
        "requestListener",
        "requestListener2",
        "usedDiskCacheSize",
        "",
        "getUsedDiskCacheSize",
        "()J",
        "clearCaches",
        "",
        "clearDiskCaches",
        "clearMemoryCaches",
        "evictFromCache",
        "uri",
        "Landroid/net/Uri;",
        "evictFromDiskCache",
        "imageRequest",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "evictFromMemoryCache",
        "fetchDecodedImage",
        "Lcom/facebook/datasource/DataSource;",
        "Lcom/facebook/common/references/CloseableReference;",
        "callerContext",
        "lowestPermittedRequestLevelOnSubmit",
        "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
        "uiComponentId",
        "",
        "extras",
        "",
        "fetchEncodedImage",
        "fetchImageFromBitmapCache",
        "generateUniqueFutureId",
        "getCacheKey",
        "getCachedImage",
        "cacheKey",
        "getCombinedRequestListener",
        "listener",
        "getDataSourceSupplier",
        "requestLevel",
        "getEncodedImageDataSourceSupplier",
        "getRequestListenerForRequest",
        "hasCachedImage",
        "init",
        "isInBitmapMemoryCache",
        "isInDiskCache",
        "isInDiskCacheSync",
        "cacheChoice",
        "Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;",
        "isInEncodedMemoryCache",
        "pause",
        "predicateForUri",
        "Lcom/facebook/common/internal/Predicate;",
        "prefetchToBitmapCache",
        "Ljava/lang/Void;",
        "prefetchToDiskCache",
        "priority",
        "Lcom/facebook/imagepipeline/common/Priority;",
        "prefetchToEncodedCache",
        "resume",
        "submitFetchRequest",
        "T",
        "producerSequence",
        "Lcom/facebook/imagepipeline/producers/Producer;",
        "settableProducerContext",
        "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
        "submitPrefetchRequest",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;

.field private static final NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

.field private static final PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

.field private final config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

.field private final encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final idCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final isLazyDataSource:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

.field private final requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

.field private final requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

.field private final smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;


# direct methods
.method public static synthetic $r8$lambda$5B6wUGVTchTEs_rgu4p_wngo1Ro(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 0

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches$lambda$2(Lcom/facebook/cache/common/CacheKey;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ChqjrwEnNfAY4AifNBciOYIWVwo(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache$lambda$3(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nZs84Ok2apCtt1EabVgQ1pUKeHc(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri$lambda$10(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tiZ0I6pftJzj9V30uc8qfwlqrvY(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache$lambda$4(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->Companion:Lcom/facebook/imagepipeline/core/ImagePipeline$Companion;

    .line 1042
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    .line 1043
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "ImageRequest is null"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/Supplier;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;Lcom/facebook/common/internal/Supplier;Lcom/facebook/common/internal/Supplier;Lcom/facebook/callercontext/CallerContextVerifier;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V
    .locals 1
    .param p1, "producerSequenceFactory"    # Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .param p2, "requestListeners"    # Ljava/util/Set;
    .param p3, "requestListener2s"    # Ljava/util/Set;
    .param p4, "isPrefetchEnabledSupplier"    # Lcom/facebook/common/internal/Supplier;
    .param p5, "bitmapMemoryCache"    # Lcom/facebook/imagepipeline/cache/MemoryCache;
    .param p6, "encodedMemoryCache"    # Lcom/facebook/imagepipeline/cache/MemoryCache;
    .param p7, "mainBufferedDiskCache"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p8, "smallImageBufferedDiskCache"    # Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .param p9, "cacheKeyFactory"    # Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .param p10, "threadHandoffProducerQueue"    # Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;
    .param p11, "suppressBitmapPrefetchingSupplier"    # Lcom/facebook/common/internal/Supplier;
    .param p12, "lazyDataSource"    # Lcom/facebook/common/internal/Supplier;
    .param p13, "callerContextVerifier"    # Lcom/facebook/callercontext/CallerContextVerifier;
    .param p14, "config"    # Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lcom/facebook/imagepipeline/listener/RequestListener2;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/callercontext/CallerContextVerifier;",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "producerSequenceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestListeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestListener2s"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isPrefetchEnabledSupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapMemoryCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedMemoryCache"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainBufferedDiskCache"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "smallImageBufferedDiskCache"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKeyFactory"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadHandoffProducerQueue"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suppressBitmapPrefetchingSupplier"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyDataSource"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    .line 53
    iput-object p4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    .line 66
    new-instance v0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    invoke-direct {v0, p2}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>(Ljava/util/Set;)V

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 67
    new-instance v0, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;

    invoke-direct {v0, p3}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener2;-><init>(Ljava/util/Set;)V

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener2;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->idCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1023
    nop

    .line 1024
    iput-object p5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 1025
    iput-object p6, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 1026
    iput-object p7, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 1027
    iput-object p8, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 1028
    iput-object p9, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 1029
    iput-object p10, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    .line 1030
    iput-object p11, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 1031
    iput-object p12, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isLazyDataSource:Lcom/facebook/common/internal/Supplier;

    .line 1032
    iput-object p13, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    .line 1033
    iput-object p14, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 1034
    nop

    .line 49
    return-void
.end method

.method private static final clearMemoryCaches$lambda$2(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 1
    .param p0, "it"    # Lcom/facebook/cache/common/CacheKey;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 7

    .line 211
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 214
    move-object v4, v0

    goto :goto_0

    .line 211
    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 215
    move-object v5, v0

    goto :goto_1

    .line 211
    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 216
    move-object v6, v0

    goto :goto_2

    .line 211
    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    return-object p0
.end method

.method private static final isInDiskCache$lambda$3(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/cache/common/CacheKey;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/imagepipeline/core/ImagePipeline;
    .param p1, "$cacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .param p2, "task"    # Lbolts/Task;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "task.result"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    const-string v1, "cacheKey"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0
.end method

.method private static final isInDiskCache$lambda$4(Lcom/facebook/datasource/SimpleDataSource;Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .param p0, "$dataSource"    # Lcom/facebook/datasource/SimpleDataSource;
    .param p1, "task"    # Lbolts/Task;

    .line 795
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "task.result"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/datasource/SimpleDataSource;->setResult(Ljava/lang/Object;)Z

    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method private final predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/common/internal/Predicate<",
            "Lcom/facebook/cache/common/CacheKey;",
            ">;"
        }
    .end annotation

    .line 1008
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda2;-><init>(Landroid/net/Uri;)V

    .line 1010
    return-object v0
.end method

.method private static final predicateForUri$lambda$10(Landroid/net/Uri;Lcom/facebook/cache/common/CacheKey;)Z
    .locals 1
    .param p0, "$uri"    # Landroid/net/Uri;
    .param p1, "key"    # Lcom/facebook/cache/common/CacheKey;

    const-string v0, "$uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-interface {p1, p0}, Lcom/facebook/cache/common/CacheKey;->containsUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static synthetic prefetchToEncodedCache$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 0

    .line 544
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 547
    sget-object p3, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 544
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 548
    const/4 p4, 0x0

    .line 544
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object p0

    return-object p0
.end method

.method private final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .param p1, "producerSequence"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "callerContext"    # Ljava/lang/Object;
    .param p5, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .param p6, "uiComponentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 850
    nop

    .line 851
    nop

    .line 852
    nop

    .line 853
    nop

    .line 854
    nop

    .line 855
    nop

    .line 856
    nop

    .line 857
    nop

    .line 850
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    .line 857
    return-object v0
.end method

.method private final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;
    .locals 26
    .param p1, "producerSequence"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "callerContext"    # Ljava/lang/Object;
    .param p5, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .param p6, "uiComponentId"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 868
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p7

    sget-object v16, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v16, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v0, "ImagePipeline#submitFetchRequest"

    .local v0, "name$iv":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v17, "name$iv":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1074
    .local v18, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const-string/jumbo v10, "{\n          val lowestPe\u2026questListener2)\n        }"

    const/4 v3, 0x1

    const-string v4, "getMax(\n                \u2026ttedRequestLevelOnSubmit)"

    const-string/jumbo v8, "{\n          DataSources.\u2026urce(exception)\n        }"

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 1075
    const/16 v19, 0x0

    .line 870
    .local v19, "$i$a$-traceSection-ImagePipeline$submitFetchRequest$1":I
    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 871
    invoke-virtual {v1, v14, v12}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 870
    invoke-direct {v0, v6, v7}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 869
    move-object/from16 v20, v0

    .line 872
    .local v20, "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    iget-object v0, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v0, :cond_0

    invoke-interface {v0, v13, v5}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V

    .line 873
    :cond_0
    nop

    .line 876
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 875
    invoke-static {v0, v15}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    nop

    .line 878
    .local v9, "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 879
    nop

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v6

    .line 881
    nop

    .line 882
    move-object/from16 v7, v20

    check-cast v7, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 883
    nop

    .line 884
    nop

    .line 885
    nop

    .line 886
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 887
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v21, v5

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v21, v3

    .line 888
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v22

    .line 889
    iget-object v5, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 878
    const/16 v23, 0x0

    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v24, v5

    move-object v5, v6

    move-object/from16 v6, p6

    move-object v15, v8

    move-object/from16 v8, p4

    move-object v1, v10

    move/from16 v10, v23

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v24

    :try_start_1
    invoke-direct/range {v3 .. v13}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 877
    nop

    .line 890
    .local v0, "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    move-object/from16 v13, p7

    :try_start_2
    invoke-virtual {v0, v13}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->putExtras(Ljava/util/Map;)V

    .line 892
    move-object/from16 v3, v20

    check-cast v3, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 891
    invoke-static {v2, v0, v3}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    .line 873
    .end local v0    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local v9    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    nop

    .line 875
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 893
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v13, p7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v15, v8

    move-object v13, v11

    .line 894
    .local v0, "exception":Ljava/lang/Exception;
    :goto_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    .line 893
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_3
    return-object v3

    .line 1078
    .end local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$1":I
    .end local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    :cond_3
    move-object v15, v8

    move-object v1, v10

    move-object v13, v11

    invoke-static/range {v17 .. v17}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1079
    nop

    .line 1080
    const/16 v19, 0x0

    .line 870
    .restart local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$1":I
    :try_start_3
    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 871
    move-object/from16 v12, p5

    move-object v11, v1

    move-object/from16 v1, p0

    invoke-virtual {v1, v14, v12}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 870
    invoke-direct {v0, v6, v7}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 869
    move-object/from16 v20, v0

    .line 872
    .restart local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    iget-object v0, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v0, :cond_4

    move-object/from16 v10, p4

    invoke-interface {v0, v10, v5}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p4

    .line 873
    :goto_4
    nop

    .line 876
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 875
    move-object v8, v15

    move-object/from16 v15, p3

    :try_start_5
    invoke-static {v0, v15}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    nop

    .line 878
    .restart local v9    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 879
    nop

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v6

    .line 881
    nop

    .line 882
    move-object/from16 v7, v20

    check-cast v7, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 883
    nop

    .line 884
    nop

    .line 885
    nop

    .line 886
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 887
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v21, v5

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v21, v3

    .line 888
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v22

    .line 889
    iget-object v5, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 878
    const/16 v23, 0x0

    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v24, v5

    move-object v5, v6

    move-object/from16 v6, p6

    move-object v1, v8

    move-object/from16 v8, p4

    move/from16 v10, v23

    move-object/from16 v25, v11

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object v14, v13

    move-object/from16 v13, v24

    :try_start_6
    invoke-direct/range {v3 .. v13}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 877
    nop

    .line 890
    .local v0, "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    invoke-virtual {v0, v14}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->putExtras(Ljava/util/Map;)V

    .line 892
    move-object/from16 v3, v20

    check-cast v3, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 891
    invoke-static {v2, v0, v3}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    .line 873
    .end local v0    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local v9    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    nop

    .line 875
    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .line 893
    :catch_3
    move-exception v0

    goto :goto_7

    .line 1082
    .end local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$1":I
    .end local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 893
    .restart local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$1":I
    .restart local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    :catch_4
    move-exception v0

    move-object v1, v8

    move-object v14, v13

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v14, v13

    move-object v1, v15

    move-object/from16 v15, p3

    .line 894
    .local v0, "exception":Ljava/lang/Exception;
    :goto_7
    :try_start_7
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    .line 893
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_8
    nop

    .line 873
    .end local v16    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v17    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$traceSection":I
    .end local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$1":I
    .end local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    nop

    .line 1082
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v3

    .restart local v16    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v17    # "name$iv":Ljava/lang/String;
    .restart local v18    # "$i$f$traceSection":I
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v15, p3

    :goto_9
    move-object v14, v13

    :goto_a
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v0
.end method

.method private final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;
    .locals 27
    .param p1, "producerSequence"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "callerContext"    # Ljava/lang/Object;
    .param p5, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .param p6, "extras"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 906
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    sget-object v16, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v16, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v17, "ImagePipeline#submitFetchRequest"

    .local v17, "name$iv":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1083
    .local v18, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const-string/jumbo v11, "{\n          val lowestPe\u2026questListener2)\n        }"

    const/4 v3, 0x1

    const-string v4, "getMax(\n                \u2026ttedRequestLevelOnSubmit)"

    const-string/jumbo v10, "{\n          DataSources.\u2026urce(exception)\n        }"

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 1084
    const/16 v19, 0x0

    .line 908
    .local v19, "$i$a$-traceSection-ImagePipeline$submitFetchRequest$2":I
    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 909
    invoke-virtual {v1, v14, v12}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v6

    iget-object v7, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 908
    invoke-direct {v0, v6, v7}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 907
    move-object/from16 v20, v0

    .line 910
    .local v20, "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    iget-object v0, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v0, :cond_0

    invoke-interface {v0, v13, v5}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V

    .line 911
    :cond_0
    nop

    .line 914
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 913
    invoke-static {v0, v15}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    nop

    .line 916
    .local v9, "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 917
    nop

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v6

    .line 919
    nop

    .line 920
    move-object/from16 v7, v20

    check-cast v7, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 921
    nop

    .line 922
    nop

    .line 923
    nop

    .line 924
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 925
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v21, v5

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v21, v3

    .line 926
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v22

    .line 927
    iget-object v8, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 916
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v3, v0

    move-object/from16 v4, p2

    move-object v5, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v8

    move-object/from16 v8, p4

    move-object/from16 v25, v10

    move/from16 v10, v24

    move-object/from16 v26, v11

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object v15, v13

    move-object/from16 v13, v23

    :try_start_1
    invoke-direct/range {v3 .. v13}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 915
    nop

    .line 929
    .local v0, "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    move-object/from16 v3, v20

    check-cast v3, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 928
    invoke-static {v2, v0, v3}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    .line 911
    .end local v0    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local v9    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    nop

    .line 913
    move-object/from16 v0, v26

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 930
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v25, v10

    move-object v15, v13

    .line 931
    .local v0, "exception":Ljava/lang/Exception;
    :goto_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v3

    .line 930
    move-object/from16 v13, v25

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_3
    return-object v3

    .line 1087
    .end local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$2":I
    .end local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    :cond_3
    move-object v0, v11

    move-object v15, v13

    move-object v13, v10

    invoke-static/range {v17 .. v17}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1088
    nop

    .line 1089
    const/16 v19, 0x0

    .line 908
    .restart local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$2":I
    :try_start_2
    new-instance v6, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 909
    move-object/from16 v12, p5

    invoke-virtual {v1, v14, v12}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v7

    iget-object v8, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 908
    invoke-direct {v6, v7, v8}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 907
    move-object/from16 v20, v6

    .line 910
    .restart local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    iget-object v6, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    if-eqz v6, :cond_4

    invoke-interface {v6, v15, v5}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 911
    :cond_4
    nop

    .line 914
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 913
    move-object/from16 v15, p3

    :try_start_4
    invoke-static {v6, v15}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    nop

    .line 916
    .restart local v9    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    new-instance v21, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 917
    nop

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v6

    .line 919
    nop

    .line 920
    move-object/from16 v7, v20

    check-cast v7, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 921
    nop

    .line 922
    nop

    .line 923
    nop

    .line 924
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 925
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move v11, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v11, v3

    .line 926
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v22

    .line 927
    iget-object v10, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 916
    const/4 v8, 0x0

    const/16 v23, 0x0

    move-object/from16 v3, v21

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v8, p4

    move-object/from16 v24, v10

    move/from16 v10, v23

    move-object/from16 v12, v22

    move-object v1, v13

    move-object/from16 v13, v24

    :try_start_5
    invoke-direct/range {v3 .. v13}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 915
    move-object/from16 v3, v21

    .line 929
    .local v3, "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    move-object/from16 v4, v20

    check-cast v4, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 928
    invoke-static {v2, v3, v4}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v4

    .line 911
    .end local v3    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local v9    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    nop

    .line 913
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    .line 930
    :catch_2
    move-exception v0

    goto :goto_7

    .line 1091
    .end local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$2":I
    .end local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 930
    .restart local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$2":I
    .restart local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v15, p3

    :goto_6
    move-object v1, v13

    .line 931
    .restart local v0    # "exception":Ljava/lang/Exception;
    :goto_7
    :try_start_6
    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v4

    .line 930
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_8
    nop

    .line 911
    .end local v16    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v17    # "name$iv":Ljava/lang/String;
    .end local v18    # "$i$f$traceSection":I
    .end local v19    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$2":I
    .end local v20    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    nop

    .line 1091
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v4

    .restart local v16    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v17    # "name$iv":Ljava/lang/String;
    .restart local v18    # "$i$f$traceSection":I
    :catchall_1
    move-exception v0

    move-object/from16 v15, p3

    :goto_9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v0
.end method

.method private final submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 17
    .param p1, "producerSequence"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "callerContext"    # Ljava/lang/Object;
    .param p5, "priority"    # Lcom/facebook/imagepipeline/common/Priority;
    .param p6, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 959
    move-object/from16 v1, p0

    new-instance v0, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    .line 960
    move-object/from16 v12, p2

    move-object/from16 v13, p6

    invoke-virtual {v1, v12, v13}, Lcom/facebook/imagepipeline/core/ImagePipeline;->getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v2

    iget-object v3, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 959
    invoke-direct {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 958
    move-object v14, v0

    .line 961
    .local v14, "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    iget-object v0, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->callerContextVerifier:Lcom/facebook/callercontext/CallerContextVerifier;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object/from16 v15, p4

    invoke-interface {v0, v15, v2}, Lcom/facebook/callercontext/CallerContextVerifier;->verifyCallerContext(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v15, p4

    .line 962
    :goto_0
    nop

    .line 965
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    .line 964
    move-object/from16 v11, p3

    invoke-static {v0, v11}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getMax(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v7

    const-string v0, "getMax(\n              im\u2026ttedRequestLevelOnSubmit)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 963
    nop

    .line 967
    .local v7, "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    new-instance v0, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    .line 968
    nop

    .line 969
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->generateUniqueFutureId()Ljava/lang/String;

    move-result-object v4

    .line 970
    move-object v5, v14

    check-cast v5, Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 971
    nop

    .line 972
    nop

    .line 973
    nop

    .line 974
    iget-object v3, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getAllowProgressiveOnPrefetch()Z

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    if-eqz v3, :cond_2

    .line 975
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getProgressiveRenderingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v6

    .line 976
    :goto_2
    nop

    .line 977
    iget-object v10, v1, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    .line 967
    const/4 v8, 0x1

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v16, v10

    move-object/from16 v10, p5

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    .line 966
    nop

    .line 978
    .local v0, "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    sget-object v2, Lcom/facebook/imagepipeline/datasource/ProducerToDataSourceAdapter;->Companion:Lcom/facebook/imagepipeline/datasource/ProducerToDataSourceAdapter$Companion;

    move-object v3, v14

    check-cast v3, Lcom/facebook/imagepipeline/listener/RequestListener2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v2, v4, v0, v3}, Lcom/facebook/imagepipeline/datasource/ProducerToDataSourceAdapter$Companion;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "settableProducerContext":Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .end local v7    # "lowestPermittedRequestLevel":Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    goto :goto_4

    .line 979
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    .line 980
    .local v0, "exception":Ljava/lang/Exception;
    :goto_3
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v2

    .line 979
    const-string/jumbo v3, "{\n      DataSources.imme\u2026taSource(exception)\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_4
    return-object v2
.end method


# virtual methods
.method public final clearCaches()V
    .locals 0

    .line 647
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 648
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearDiskCaches()V

    .line 649
    return-void
.end method

.method public final clearDiskCaches()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->clearAll()Lbolts/Task;

    .line 634
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->clearAll()Lbolts/Task;

    .line 635
    return-void
.end method

.method public final clearMemoryCaches()V
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda3;-><init>()V

    .line 626
    nop

    .line 627
    .local v0, "allPredicate":Lcom/facebook/common/internal/Predicate;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    .line 628
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    .line 629
    return-void
.end method

.method public final evictFromCache(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromMemoryCache(Landroid/net/Uri;)V

    .line 621
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Landroid/net/Uri;)V

    .line 622
    return-void
.end method

.method public final evictFromDiskCache(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 594
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 595
    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final evictFromDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 3
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 603
    if-nez p1, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 607
    .local v0, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    const-string v2, "cacheKey"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    .line 608
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->remove(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    .line 609
    return-void
.end method

.method public final evictFromMemoryCache(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;

    move-result-object v0

    .line 582
    .local v0, "predicate":Lcom/facebook/common/internal/Predicate;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    .line 583
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/facebook/common/internal/Predicate;)I

    .line 584
    return-void
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 249
    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 9
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "requestListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    nop

    .line 269
    nop

    .line 270
    nop

    .line 271
    nop

    .line 272
    nop

    .line 268
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/DataSource;
    .locals 9
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "lowestPermittedRequestLevelOnSubmit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 291
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .param p5, "uiComponentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    const-string v1, "immediateFailedDataSource(NullPointerException())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 221
    :cond_0
    nop

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 223
    .local v2, "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    if-nez p3, :cond_1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, p3

    .line 227
    :goto_0
    nop

    .line 228
    nop

    .line 229
    nop

    .line 223
    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "{\n      DataSources.imme\u2026taSource(exception)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 221
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public final fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;
    .locals 9
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "lowestPermittedRequestLevelOnSubmit"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .param p5, "uiComponentId"    # Ljava/lang/String;
    .param p6, "extras"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "lowestPermittedRequestLevelOnSubmit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    if-nez p1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    const-string v1, "immediateFailedDataSource(NullPointerException())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 323
    :cond_0
    nop

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 325
    .local v2, "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 326
    nop

    .line 327
    nop

    .line 328
    nop

    .line 329
    nop

    .line 330
    nop

    .line 331
    nop

    .line 332
    nop

    .line 325
    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 333
    const-string/jumbo v2, "{\n      DataSources.imme\u2026taSource(exception)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 323
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public final fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final fetchEncodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 10
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    move-object v0, p1

    .line 372
    .local v0, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 373
    nop

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImageProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v3

    .line 381
    .local v3, "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 382
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->fromRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setResizeOptions(Lcom/facebook/imagepipeline/common/ResizeOptions;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const-string v2, "fromRequest(imageRequest\u2026sizeOptions(null).build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 384
    :cond_0
    nop

    .line 385
    nop

    .line 386
    nop

    .line 387
    sget-object v5, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 388
    nop

    .line 389
    nop

    .line 390
    nop

    .line 391
    nop

    .line 384
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/datasource/DataSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "exception":Ljava/lang/Exception;
    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v2

    .line 392
    const-string/jumbo v3, "{\n      DataSources.imme\u2026taSource(exception)\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 373
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 372
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final fetchImageFromBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final generateUniqueFutureId()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->idCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

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

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    return-object v0
.end method

.method public final getCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;
    .locals 6
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;

    .line 803
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ImagePipeline#getCacheKey"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1065
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1066
    const/4 v3, 0x0

    .line 804
    .local v3, "$i$a$-traceSection-ImagePipeline$getCacheKey$1":I
    const/4 v4, 0x0

    .line 805
    .local v4, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    if-eqz p1, :cond_1

    .line 807
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 808
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v5, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v5

    goto :goto_0

    .line 810
    :cond_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v5, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v5

    .line 806
    :goto_0
    move-object v4, v5

    .line 813
    :cond_1
    return-object v4

    .line 1069
    .end local v3    # "$i$a$-traceSection-ImagePipeline$getCacheKey$1":I
    .end local v4    # "cacheKey":Lcom/facebook/cache/common/CacheKey;
    :cond_2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1070
    nop

    .line 1071
    const/4 v3, 0x0

    .line 804
    .restart local v3    # "$i$a$-traceSection-ImagePipeline$getCacheKey$1":I
    const/4 v4, 0x0

    .line 805
    .restart local v4    # "cacheKey":Lcom/facebook/cache/common/CacheKey;
    if-eqz p1, :cond_4

    .line 807
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getPostprocessor()Lcom/facebook/imagepipeline/request/Postprocessor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 808
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v5, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getPostprocessedBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v5

    goto :goto_1

    .line 810
    :cond_3
    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v5, p1, p2}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 1073
    .end local v3    # "$i$a$-traceSection-ImagePipeline$getCacheKey$1":I
    .end local v4    # "cacheKey":Lcom/facebook/cache/common/CacheKey;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3

    .line 813
    .restart local v3    # "$i$a$-traceSection-ImagePipeline$getCacheKey$1":I
    .restart local v4    # "cacheKey":Lcom/facebook/cache/common/CacheKey;
    :cond_4
    :goto_2
    nop

    .line 1073
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ImagePipeline$getCacheKey$1":I
    .end local v4    # "cacheKey":Lcom/facebook/cache/common/CacheKey;
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v4
.end method

.method public final getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object v0
.end method

.method public final getCachedImage(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .param p1, "cacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/CacheKey;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 823
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 824
    return-object v0

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 827
    .local v1, "closeableImage":Lcom/facebook/common/references/CloseableReference;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/CloseableImage;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/image/CloseableImage;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfFullQuality()Z

    move-result v2

    if-nez v2, :cond_1

    .line 828
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 829
    return-object v0

    .line 831
    :cond_1
    return-object v1
.end method

.method public final getCombinedRequestListener(Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;
    .locals 6
    .param p1, "listener"    # Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 1006
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 1101
    .local v0, "it":Lcom/facebook/imagepipeline/listener/RequestListener;
    const/4 v1, 0x0

    .line 1006
    .local v1, "$i$a$-let-ImagePipeline$getCombinedRequestListener$1":I
    new-instance v2, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/imagepipeline/listener/RequestListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    .end local v0    # "it":Lcom/facebook/imagepipeline/listener/RequestListener;
    .end local v1    # "$i$a$-let-ImagePipeline$getCombinedRequestListener$1":I
    check-cast v2, Lcom/facebook/imagepipeline/listener/RequestListener;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    :goto_0
    return-object v2
.end method

.method public final getConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    return-object v0
.end method

.method public final getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/common/internal/Supplier;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestLevel"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/common/internal/Supplier;
    .locals 7
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestLevel"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$2;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)Lcom/facebook/common/internal/Supplier;
    .locals 8
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestLevel"    # Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .param p4, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .param p5, "uiComponentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline$getDataSourceSupplier$3;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Lcom/facebook/imagepipeline/listener/RequestListener;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getEncodedImageDataSourceSupplier(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipeline$getEncodedImageDataSourceSupplier$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V

    check-cast v0, Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final getProducerSequenceFactory()Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    return-object v0
.end method

.method public final getRequestListenerForRequest(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/imagepipeline/listener/RequestListener;
    .locals 6
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 988
    if-eqz p1, :cond_3

    .line 989
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 990
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v3

    if-nez v3, :cond_0

    .line 991
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    goto :goto_1

    .line 993
    :cond_0
    new-instance v3, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    new-array v0, v0, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v4, v0, v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {v3, v0}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    move-object v0, v3

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener;

    goto :goto_1

    .line 996
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v3

    if-nez v3, :cond_2

    .line 997
    new-instance v3, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    new-array v0, v0, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v4, v0, v2

    aput-object p2, v0, v1

    invoke-direct {v3, v0}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    goto :goto_0

    .line 999
    :cond_2
    new-instance v3, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;

    .line 1000
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/facebook/imagepipeline/listener/RequestListener;

    iget-object v5, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener:Lcom/facebook/imagepipeline/listener/RequestListener;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRequestListener()Lcom/facebook/imagepipeline/listener/RequestListener;

    move-result-object v1

    aput-object v1, v4, v0

    .line 999
    invoke-direct {v3, v4}, Lcom/facebook/imagepipeline/listener/ForwardingRequestListener;-><init>([Lcom/facebook/imagepipeline/listener/RequestListener;)V

    :goto_0
    move-object v0, v3

    check-cast v0, Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 989
    :goto_1
    return-object v0

    .line 988
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUsedDiskCacheSize()J
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final hasCachedImage(Lcom/facebook/cache/common/CacheKey;)Z
    .locals 1
    .param p1, "cacheKey"    # Lcom/facebook/cache/common/CacheKey;

    .line 835
    if-nez p1, :cond_0

    .line 836
    const/4 v0, 0x0

    goto :goto_0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 835
    :goto_0
    return v0
.end method

.method public final init()V
    .locals 0

    .line 1039
    return-void
.end method

.method public final isInBitmapMemoryCache(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 658
    if-nez p1, :cond_0

    .line 659
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;

    move-result-object v0

    .line 662
    .local v0, "bitmapCachePredicate":Lcom/facebook/common/internal/Predicate;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Lcom/facebook/common/internal/Predicate;)Z

    move-result v1

    return v1
.end method

.method public final isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 3
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 672
    if-nez p1, :cond_0

    .line 673
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getBitmapCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 676
    .local v0, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->bitmapMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    const-string v2, "cacheKey"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 677
    .local v1, "ref":Lcom/facebook/common/references/CloseableReference;
    nop

    .line 678
    :try_start_0
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 681
    nop

    .line 677
    return v2

    .line 680
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v2
.end method

.method public final isInDiskCache(Landroid/net/Uri;)Lcom/facebook/datasource/DataSource;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 774
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/datasource/DataSource;
    .locals 4
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 784
    .local v0, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    invoke-static {}, Lcom/facebook/datasource/SimpleDataSource;->create()Lcom/facebook/datasource/SimpleDataSource;

    move-result-object v1

    .line 785
    .local v1, "dataSource":Lcom/facebook/datasource/SimpleDataSource;
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 786
    const-string v3, "cacheKey"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->contains(Lcom/facebook/cache/common/CacheKey;)Lbolts/Task;

    move-result-object v2

    .line 787
    new-instance v3, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/cache/common/CacheKey;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 794
    new-instance v3, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/datasource/SimpleDataSource;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 798
    const-string v2, "dataSource"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/facebook/datasource/DataSource;

    return-object v2
.end method

.method public final isInDiskCacheSync(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 727
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isInDiskCacheSync(Landroid/net/Uri;Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cacheChoice"    # Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 741
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->setCacheChoice(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 740
    nop

    .line 742
    .local v0, "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    const-string v1, "imageRequest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v1

    return v1
.end method

.method public final isInDiskCacheSync(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 4
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 755
    .local v0, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v1

    const-string v2, "imageRequest.cacheChoice"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    .local v1, "cacheChoice":Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    sget-object v2, Lcom/facebook/imagepipeline/core/ImagePipeline$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "cacheKey"

    packed-switch v2, :pswitch_data_0

    .line 759
    const/4 v2, 0x0

    goto :goto_0

    .line 758
    :pswitch_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->smallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v2

    goto :goto_0

    .line 757
    :pswitch_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->mainBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->diskCheckSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v2

    .line 756
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isInEncodedMemoryCache(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 691
    if-nez p1, :cond_0

    .line 692
    const/4 v0, 0x0

    return v0

    .line 694
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->predicateForUri(Landroid/net/Uri;)Lcom/facebook/common/internal/Predicate;

    move-result-object v0

    .line 695
    .local v0, "encodedCachePredicate":Lcom/facebook/common/internal/Predicate;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Lcom/facebook/common/internal/Predicate;)Z

    move-result v1

    return v1
.end method

.method public final isInEncodedMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 3
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 705
    if-nez p1, :cond_0

    .line 706
    const/4 v0, 0x0

    return v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->cacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 709
    .local v0, "cacheKey":Lcom/facebook/cache/common/CacheKey;
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->encodedMemoryCache:Lcom/facebook/imagepipeline/cache/MemoryCache;

    const-string v2, "cacheKey"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 710
    .local v1, "ref":Lcom/facebook/common/references/CloseableReference;
    nop

    .line 711
    :try_start_0
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 714
    nop

    .line 710
    return v2

    .line 713
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v2
.end method

.method public final isLazyDataSource()Lcom/facebook/common/internal/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isLazyDataSource:Lcom/facebook/common/internal/Supplier;

    return-object v0
.end method

.method public final isPaused()Z
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->isQueueing()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->startQueueing()V

    .line 1014
    return-void
.end method

.method public final prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 16
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 418
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    sget-object v10, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v10, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v0, "ImagePipeline#prefetchToBitmapCache"

    .local v0, "name$iv":Ljava/lang/String;
    move-object v11, v0

    .end local v0    # "name$iv":Ljava/lang/String;
    .local v11, "name$iv":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1047
    .local v12, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "suppressBitmapPrefetchin\u2026                   .get()"

    const-string v4, "immediateSuccessfulDataSource()"

    const-string v5, "Required value was null."

    const-string/jumbo v13, "{\n          DataSources.\u2026urce(exception)\n        }"

    const-string v6, "immediateFailedDataSource(PREFETCH_EXCEPTION)"

    if-nez v0, :cond_6

    .line 1048
    const/4 v14, 0x0

    .line 419
    .local v14, "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 422
    :cond_0
    nop

    .line 423
    :try_start_0
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 426
    :cond_1
    if-eqz v9, :cond_5

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->shouldDecodePrefetches()Ljava/lang/Boolean;

    move-result-object v0

    .line 429
    .local v0, "shouldDecodePrefetches":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 432
    :cond_3
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 433
    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 429
    :goto_0
    nop

    .line 428
    move v15, v1

    .line 435
    .local v15, "skipBitmapCache":Z
    if-eqz v15, :cond_4

    .line 436
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v1, v9}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 437
    :cond_4
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v1, v9}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    move-object v2, v1

    .line 435
    :goto_1
    nop

    .line 434
    nop

    .line 438
    .local v2, "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 439
    nop

    .line 440
    nop

    .line 441
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 442
    nop

    .line 443
    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 444
    nop

    .line 438
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .end local v0    # "shouldDecodePrefetches":Ljava/lang/Boolean;
    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    .end local v15    # "skipBitmapCache":Z
    goto :goto_2

    .line 426
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v11    # "name$iv":Ljava/lang/String;
    .end local v12    # "$i$f$traceSection":I
    .end local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    .end local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p2    # "callerContext":Ljava/lang/Object;
    .end local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .restart local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v11    # "name$iv":Ljava/lang/String;
    .restart local v12    # "$i$f$traceSection":I
    .restart local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    .restart local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p2    # "callerContext":Ljava/lang/Object;
    .restart local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 445
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_2
    nop

    .line 1048
    .end local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    goto/16 :goto_7

    .line 1051
    :cond_6
    invoke-static {v11}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1052
    nop

    .line 1053
    const/4 v14, 0x0

    .line 419
    .restart local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    :try_start_1
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 420
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    .end local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v11    # "name$iv":Ljava/lang/String;
    .end local v12    # "$i$f$traceSection":I
    .end local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    :goto_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v0

    .line 422
    .restart local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v11    # "name$iv":Ljava/lang/String;
    .restart local v12    # "$i$f$traceSection":I
    .restart local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    :cond_7
    nop

    .line 423
    :try_start_2
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v11    # "name$iv":Ljava/lang/String;
    .end local v12    # "$i$f$traceSection":I
    .end local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    goto :goto_3

    .line 426
    .restart local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v11    # "name$iv":Ljava/lang/String;
    .restart local v12    # "$i$f$traceSection":I
    .restart local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    :cond_8
    if-eqz v9, :cond_c

    .line 427
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->shouldDecodePrefetches()Ljava/lang/Boolean;

    move-result-object v0

    .line 429
    .local v0, "shouldDecodePrefetches":Ljava/lang/Boolean;
    if-eqz v0, :cond_a

    .line 430
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_4

    .line 432
    :cond_a
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->suppressBitmapPrefetchingSupplier:Lcom/facebook/common/internal/Supplier;

    .line 433
    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 429
    :goto_4
    nop

    .line 428
    move v15, v1

    .line 435
    .restart local v15    # "skipBitmapCache":Z
    if-eqz v15, :cond_b

    .line 436
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v1, v9}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    .line 437
    :cond_b
    iget-object v1, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v1, v9}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getDecodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    move-object v2, v1

    .line 435
    :goto_5
    nop

    .line 434
    nop

    .line 438
    .restart local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 439
    nop

    .line 440
    nop

    .line 441
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 442
    nop

    .line 443
    sget-object v6, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 444
    nop

    .line 438
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .end local v0    # "shouldDecodePrefetches":Ljava/lang/Boolean;
    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    .end local v15    # "skipBitmapCache":Z
    goto :goto_6

    .line 426
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v11    # "name$iv":Ljava/lang/String;
    .end local v12    # "$i$f$traceSection":I
    .end local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    .end local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p2    # "callerContext":Ljava/lang/Object;
    .end local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    .restart local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v11    # "name$iv":Ljava/lang/String;
    .restart local v12    # "$i$f$traceSection":I
    .restart local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    .restart local p1    # "imageRequest":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p2    # "callerContext":Ljava/lang/Object;
    .restart local p3    # "requestListener":Lcom/facebook/imagepipeline/listener/RequestListener;
    :catch_1
    move-exception v0

    .line 446
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_3
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 445
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 422
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_6
    nop

    .line 1053
    .end local v14    # "$i$a$-traceSection-ImagePipeline$prefetchToBitmapCache$1":I
    nop

    .line 1055
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 1053
    nop

    .line 448
    .end local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v11    # "name$iv":Ljava/lang/String;
    .end local v12    # "$i$f$traceSection":I
    :goto_7
    return-object v1

    .line 1055
    .restart local v10    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v11    # "name$iv":Ljava/lang/String;
    .restart local v12    # "$i$f$traceSection":I
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v0
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 2
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 458
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "priority"    # Lcom/facebook/imagepipeline/common/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "priority"    # Lcom/facebook/imagepipeline/common/Priority;
    .param p4, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    const-string v1, "immediateFailedDataSource(PREFETCH_EXCEPTION)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 498
    :cond_0
    if-nez p1, :cond_1

    .line 499
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "imageRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    .line 498
    const-string/jumbo v1, "{\n      DataSources.imme\u2026eRequest is null\"))\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 501
    :cond_1
    nop

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 502
    nop

    .line 504
    .local v2, "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 505
    nop

    .line 506
    nop

    .line 507
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 508
    nop

    .line 509
    nop

    .line 510
    nop

    .line 504
    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 511
    const-string/jumbo v2, "{\n        DataSources.im\u2026Source(exception)\n      }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    nop

    .line 498
    :goto_1
    return-object v0
.end method

.method public final prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToDiskCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache$default(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;ILjava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 16
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "priority"    # Lcom/facebook/imagepipeline/common/Priority;
    .param p4, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/common/Priority;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string/jumbo v0, "priority"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    sget-object v11, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v11, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v12, "ImagePipeline#prefetchToEncodedCache"

    .local v12, "name$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1056
    .local v13, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    const-string v1, "immediateSuccessfulDataSource()"

    const-string/jumbo v14, "{\n          DataSources.\u2026urce(exception)\n        }"

    const-string v2, "immediateFailedDataSourc\u2026L_IMAGEREQUEST_EXCEPTION)"

    const-string v3, "immediateFailedDataSource(PREFETCH_EXCEPTION)"

    if-nez v0, :cond_3

    .line 1057
    const/4 v15, 0x0

    .line 551
    .local v15, "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 554
    :cond_0
    if-nez v9, :cond_1

    .line 555
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 557
    :cond_1
    nop

    .line 558
    :try_start_0
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInEncodedMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 562
    :cond_2
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, v9}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 561
    nop

    .line 563
    .local v2, "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 564
    nop

    .line 565
    nop

    .line 566
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 567
    nop

    .line 568
    nop

    .line 569
    nop

    .line 563
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 570
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    .line 557
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1057
    .end local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    goto/16 :goto_3

    .line 1060
    :cond_3
    invoke-static {v12}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1061
    nop

    .line 1062
    const/4 v15, 0x0

    .line 551
    .restart local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    :try_start_1
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->isPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 552
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->PREFETCH_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    .end local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v12    # "name$iv":Ljava/lang/String;
    .end local v13    # "$i$f$traceSection":I
    .end local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    :goto_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v0

    .line 554
    .restart local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v12    # "name$iv":Ljava/lang/String;
    .restart local v13    # "$i$f$traceSection":I
    .restart local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    :cond_4
    if-nez v9, :cond_5

    .line 555
    :try_start_2
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipeline;->NULL_IMAGEREQUEST_EXCEPTION:Ljava/util/concurrent/CancellationException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v12    # "name$iv":Ljava/lang/String;
    .end local v13    # "$i$f$traceSection":I
    .end local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    goto :goto_1

    .line 557
    .restart local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v12    # "name$iv":Ljava/lang/String;
    .restart local v13    # "$i$f$traceSection":I
    .restart local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    :cond_5
    nop

    .line 558
    :try_start_3
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->config:Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->getPrefetchShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInEncodedMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 559
    invoke-static {}, Lcom/facebook/datasource/DataSources;->immediateSuccessfulDataSource()Lcom/facebook/datasource/DataSource;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v12    # "name$iv":Ljava/lang/String;
    .end local v13    # "$i$f$traceSection":I
    .end local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    goto :goto_1

    .line 562
    .restart local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v12    # "name$iv":Ljava/lang/String;
    .restart local v13    # "$i$f$traceSection":I
    .restart local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    :cond_6
    iget-object v0, v8, Lcom/facebook/imagepipeline/core/ImagePipeline;->producerSequenceFactory:Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;

    invoke-virtual {v0, v9}, Lcom/facebook/imagepipeline/core/ProducerSequenceFactory;->getEncodedImagePrefetchProducerSequence(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v2

    .line 561
    nop

    .line 563
    .restart local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    nop

    .line 564
    nop

    .line 565
    nop

    .line 566
    sget-object v4, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 567
    nop

    .line 568
    nop

    .line 569
    nop

    .line 563
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/core/ImagePipeline;->submitPrefetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "producerSequence":Lcom/facebook/imagepipeline/producers/Producer;
    goto :goto_2

    .line 570
    :catch_1
    move-exception v0

    .line 571
    .restart local v0    # "exception":Ljava/lang/Exception;
    :try_start_4
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    .line 570
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    .line 557
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_2
    nop

    .line 1062
    .end local v15    # "$i$a$-traceSection-ImagePipeline$prefetchToEncodedCache$1":I
    nop

    .line 1064
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 1062
    nop

    .line 573
    .end local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v12    # "name$iv":Ljava/lang/String;
    .end local v13    # "$i$f$traceSection":I
    :goto_3
    return-object v0

    .line 1064
    .restart local v11    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v12    # "name$iv":Ljava/lang/String;
    .restart local v13    # "$i$f$traceSection":I
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v0
.end method

.method public final prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 1
    .param p1, "imageRequest"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p2, "callerContext"    # Ljava/lang/Object;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToEncodedCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final resume()V
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->threadHandoffProducerQueue:Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ThreadHandoffProducerQueue;->stopQueuing()V

    .line 1018
    return-void
.end method

.method public final submitFetchRequest(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener;)Lcom/facebook/datasource/DataSource;
    .locals 8
    .param p1, "producerSequence"    # Lcom/facebook/imagepipeline/producers/Producer;
    .param p2, "settableProducerContext"    # Lcom/facebook/imagepipeline/producers/SettableProducerContext;
    .param p3, "requestListener"    # Lcom/facebook/imagepipeline/listener/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/SettableProducerContext;",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ")",
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "TT;>;>;"
        }
    .end annotation

    const-string/jumbo v0, "producerSequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settableProducerContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    sget-object v0, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->INSTANCE:Lcom/facebook/imagepipeline/systrace/FrescoSystrace;

    .local v0, "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    const-string v1, "ImagePipeline#submitFetchRequest"

    .local v1, "name$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1092
    .local v2, "$i$f$traceSection":I
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v3

    const-string/jumbo v4, "{\n          val requestL\u2026questListener2)\n        }"

    const-string/jumbo v5, "{\n          DataSources.\u2026urce(exception)\n        }"

    if-nez v3, :cond_0

    .line 1093
    const/4 v3, 0x0

    .line 941
    .local v3, "$i$a$-traceSection-ImagePipeline$submitFetchRequest$3":I
    nop

    .line 942
    :try_start_0
    new-instance v6, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    iget-object v7, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    invoke-direct {v6, p3, v7}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 944
    .local v6, "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 943
    invoke-static {p1, p2, v7}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v7

    .line 941
    .end local v6    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v4

    .line 946
    .local v4, "exception":Ljava/lang/Exception;
    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v7

    .line 945
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v7

    .line 1096
    .end local v3    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$3":I
    :cond_0
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 1097
    nop

    .line 1098
    const/4 v3, 0x0

    .line 941
    .restart local v3    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$3":I
    nop

    .line 942
    :try_start_1
    new-instance v6, Lcom/facebook/imagepipeline/producers/InternalRequestListener;

    iget-object v7, p0, Lcom/facebook/imagepipeline/core/ImagePipeline;->requestListener2:Lcom/facebook/imagepipeline/listener/RequestListener2;

    invoke-direct {v6, p3, v7}, Lcom/facebook/imagepipeline/producers/InternalRequestListener;-><init>(Lcom/facebook/imagepipeline/listener/RequestListener;Lcom/facebook/imagepipeline/listener/RequestListener2;)V

    .line 944
    .restart local v6    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    move-object v7, v6

    check-cast v7, Lcom/facebook/imagepipeline/listener/RequestListener2;

    .line 943
    invoke-static {p1, p2, v7}, Lcom/facebook/imagepipeline/datasource/CloseableProducerToDataSourceAdapter;->create(Lcom/facebook/imagepipeline/producers/Producer;Lcom/facebook/imagepipeline/producers/SettableProducerContext;Lcom/facebook/imagepipeline/listener/RequestListener2;)Lcom/facebook/datasource/DataSource;

    move-result-object v7

    .line 941
    .end local v6    # "requestListener2":Lcom/facebook/imagepipeline/producers/InternalRequestListener;
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1100
    .end local v3    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$3":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 945
    .restart local v3    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$3":I
    :catch_1
    move-exception v4

    .line 946
    .restart local v4    # "exception":Ljava/lang/Exception;
    :try_start_2
    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Lcom/facebook/datasource/DataSources;->immediateFailedDataSource(Ljava/lang/Throwable;)Lcom/facebook/datasource/DataSource;

    move-result-object v7

    .line 945
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_1
    nop

    .line 941
    .end local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$i$f$traceSection":I
    .end local v3    # "$i$a$-traceSection-ImagePipeline$submitFetchRequest$3":I
    nop

    .line 1100
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    return-object v7

    .restart local v0    # "this_$iv":Lcom/facebook/imagepipeline/systrace/FrescoSystrace;
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$traceSection":I
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    throw v3
.end method
