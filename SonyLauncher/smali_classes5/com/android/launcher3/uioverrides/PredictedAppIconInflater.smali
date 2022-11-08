.class public Lcom/android/launcher3/uioverrides/PredictedAppIconInflater;
.super Ljava/lang/Object;
.source "PredictedAppIconInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 28
    sget v0, Lcom/android/launcher3/R$layout;->predicted_app_icon:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 30
    .local v0, "icon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    .line 31
    return-object v0
.end method
