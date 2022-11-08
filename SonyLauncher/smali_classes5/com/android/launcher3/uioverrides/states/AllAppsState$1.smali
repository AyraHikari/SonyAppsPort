.class Lcom/android/launcher3/uioverrides/states/AllAppsState$1;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source "AllAppsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/states/AllAppsState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/states/AllAppsState;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$superPageAlphaProvider:Lcom/android/launcher3/LauncherState$PageAlphaProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/states/AllAppsState;Landroid/view/animation/Interpolator;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState$PageAlphaProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/uioverrides/states/AllAppsState;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 90
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;->this$0:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p4, p0, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;->val$superPageAlphaProvider:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .locals 1
    .param p1, "pageIndex"    # I

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/AllAppsState$1;->val$superPageAlphaProvider:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->getPageAlpha(I)F

    move-result v0

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0
.end method
