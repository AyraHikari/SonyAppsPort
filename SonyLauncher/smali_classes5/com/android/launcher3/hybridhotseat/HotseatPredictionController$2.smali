.class Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "HotseatPredictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->removePredictedApps(Ljava/util/List;Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

.field final synthetic val$icon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    .line 368
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iput-object p2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;->val$icon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;->val$icon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$2;->val$icon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-static {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->-$$Nest$mremoveIconWithoutNotify(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V

    .line 374
    :cond_0
    return-void
.end method
