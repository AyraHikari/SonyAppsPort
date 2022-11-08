.class Lcom/android/quickstep/views/RecentsView$9;
.super Landroid/util/FloatProperty;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/RecentsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 349
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/RecentsView;)Ljava/lang/Float;
    .locals 1
    .param p1, "view"    # Lcom/android/quickstep/views/RecentsView;

    .line 370
    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$9;->get(Lcom/android/quickstep/views/RecentsView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 1
    .param p1, "view"    # Lcom/android/quickstep/views/RecentsView;
    .param p2, "scale"    # F

    .line 352
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/RecentsView;->setScaleX(F)V

    .line 353
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/RecentsView;->setScaleY(F)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    .line 355
    iput-object v0, p1, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    .line 356
    new-instance v0, Lcom/android/quickstep/views/RecentsView$9$1;

    invoke-direct {v0, p0, p2}, Lcom/android/quickstep/views/RecentsView$9$1;-><init>(Lcom/android/quickstep/views/RecentsView$9;F)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 363
    iget v0, p1, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskViewsResistanceTranslation(F)V

    .line 364
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdateTaskViewsSnapshotRadius(Lcom/android/quickstep/views/RecentsView;)V

    .line 365
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdatePageOffsets(Lcom/android/quickstep/views/RecentsView;)V

    .line 366
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 349
    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView$9;->setValue(Lcom/android/quickstep/views/RecentsView;F)V

    return-void
.end method
