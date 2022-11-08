.class public Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;
.super Lcom/android/launcher3/uioverrides/states/OverviewState;
.source "SplitScreenSelectState.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getSplitSelectTranslation(Lcom/android/launcher3/Launcher;)F
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 39
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectTranslation()F

    move-result v1

    return v1
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 33
    const/16 v0, 0x40

    return v0
.end method
