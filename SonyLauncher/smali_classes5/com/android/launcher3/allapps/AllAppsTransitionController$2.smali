.class Lcom/android/launcher3/allapps/AllAppsTransitionController$2;
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

    .line 87
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Ljava/lang/Float;
    .locals 2
    .param p1, "controller"    # Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 91
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmIsTablet(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$mgetAppsViewPullbackTranslationY(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Landroid/util/FloatProperty;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->get(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/allapps/AllAppsTransitionController;F)V
    .locals 3
    .param p1, "controller"    # Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .param p2, "translation"    # F

    .line 101
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmIsTablet(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setTranslationY(F)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$mgetAppsViewPullbackTranslationY(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Landroid/util/FloatProperty;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-$$Nest$fgetmAppsView(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    .line 105
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 107
    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 87
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->setValue(Lcom/android/launcher3/allapps/AllAppsTransitionController;F)V

    return-void
.end method
