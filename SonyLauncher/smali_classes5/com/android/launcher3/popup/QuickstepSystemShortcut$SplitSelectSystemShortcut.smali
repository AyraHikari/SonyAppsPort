.class public Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "QuickstepSystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/QuickstepSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitSelectSystemShortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseQuickstepLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/BaseQuickstepLauncher;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .param p4, "position"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 56
    iget v1, p4, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->iconResId:I

    iget v2, p4, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->textResId:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 58
    iput-object p4, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 67
    .local v0, "workspaceItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 68
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    .line 72
    .local v0, "appInfo":Lcom/android/launcher3/model/data/AppInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 73
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    .line 80
    .local v2, "recentsView":Lcom/android/quickstep/views/RecentsView;
    new-instance v3, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    iget-object v4, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mOriginalView:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mPosition:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;)V

    .line 83
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 84
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 83
    const-string v5, "app_shortcut"

    invoke-virtual {v3, v5, v4}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->startSplitScreen(Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 85
    return-void

    .line 75
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_1
    sget-object v0, Lcom/android/launcher3/popup/QuickstepSystemShortcut;->TAG:Ljava/lang/String;

    const-string v1, "unknown item type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
