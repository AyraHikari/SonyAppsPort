.class Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;
.super Landroid/view/CompositionSamplingListener;
.source "RegionSamplingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SysuiCompositionSamplingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;
    .param p2, "arg0"    # Ljava/util/concurrent/Executor;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-direct {p0, p2}, Landroid/view/CompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onSampleCollected(F)V
    .locals 1
    .param p1, "medianLuma"    # F

    .line 119
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->access$500(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$3;->this$0:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->access$600(Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;F)V

    .line 122
    :cond_0
    return-void
.end method
