.class public Lcom/android/launcher3/appprediction/InstantAppItemInfo;
.super Lcom/android/launcher3/model/data/AppInfo;
.source "InstantAppItemInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/launcher3/appprediction/InstantAppItemInfo;->intent:Landroid/content/Intent;

    .line 33
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "@instantapp"

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/appprediction/InstantAppItemInfo;->componentName:Landroid/content/ComponentName;

    .line 34
    return-void
.end method


# virtual methods
.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/appprediction/InstantAppItemInfo;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 44
    .local v0, "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 45
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    .line 48
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/appprediction/InstantAppItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method
