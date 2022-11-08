.class public final Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
.super Ljava/lang/Object;
.source "ATraceLoggerTransitionProgressListener.kt"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0001\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0007H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;",
        "tracePrefix",
        "",
        "(Ljava/lang/String;)V",
        "traceName",
        "onTransitionFinished",
        "",
        "onTransitionProgress",
        "progress",
        "",
        "onTransitionStarted",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final traceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tracePrefix"    # Ljava/lang/String;
        .annotation runtime Lcom/android/systemui/unfold/util/UnfoldTransitionATracePrefix;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tracePrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "#FoldUnfoldTransitionInProgress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;->traceName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public onTransitionFinished()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;->traceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 30
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;->traceName:Ljava/lang/String;

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 31
    return-void
.end method

.method public onTransitionStarted()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;->traceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 23
    return-void
.end method
