.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsFallbackSearchContainer;
.super Landroid/view/View;
.source "TaskbarAllAppsFallbackSearchContainer.java"

# interfaces
.implements Lcom/android/launcher3/allapps/SearchUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsFallbackSearchContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    .line 42
    .local p1, "containerView":Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;, "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<*>;"
    return-void
.end method

.method public resetSearch()V
    .locals 0

    .line 47
    return-void
.end method
