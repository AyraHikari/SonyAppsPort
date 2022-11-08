.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
.super Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.source "TaskbarAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .locals 7
    .param p2, "ownOrderAppsList"    # Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;
    .param p3, "adapterProviders"    # [Lcom/android/launcher3/allapps/BaseAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;",
            "Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;",
            "[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;"
        }
    .end annotation

    .line 51
    .local p1, "appsList":Lcom/android/launcher3/allapps/AlphabeticalAppsList;, "Lcom/android/launcher3/allapps/AlphabeticalAppsList<Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;>;"
    new-instance v6, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/sonymobile/launcher/allapps/OwnOrderAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    return-object v6
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 43
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->setInsets(Landroid/graphics/Rect;)V

    .line 44
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
