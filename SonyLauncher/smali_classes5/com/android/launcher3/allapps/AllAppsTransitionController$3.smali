.class Lcom/android/launcher3/allapps/AllAppsTransitionController$3;
.super Landroid/util/FloatProperty;
.source "AllAppsTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/allapps/AllAppsTransitionController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Ljava/lang/Float;
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 115
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmIsTablet(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$mgetAppsViewPullbackAlpha(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;->get(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/allapps/AllAppsTransitionController;F)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .param p2, "alpha"    # F

    .line 124
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmIsTablet(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAlpha(F)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$mgetAppsViewPullbackAlpha(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 129
    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 111
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;->setValue(Lcom/android/launcher3/allapps/AllAppsTransitionController;F)V

    return-void
.end method
