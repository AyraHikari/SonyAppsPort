.class public Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$AppInfo;, "Lcom/android/launcher3/popup/SystemShortcut$AppInfo<TT;>;"
    .local p1, "target":Landroid/content/Context;, "TT;"
    sget v1, Lcom/android/launcher3/R$drawable;->ic_info_no_shadow:I

    sget v2, Lcom/android/launcher3/R$string;->app_info_drop_target_label:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;)V
    .locals 1
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;
    .param p4, "accessibilityInfo"    # Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;",
            ")V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$AppInfo;, "Lcom/android/launcher3/popup/SystemShortcut$AppInfo<TT;>;"
    .local p1, "target":Landroid/content/Context;, "TT;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 171
    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;

    .line 172
    iget v0, p4, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->nodeId:I

    iput v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mAccessibilityActionId:I

    .line 173
    return-void
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$AppInfo;, "Lcom/android/launcher3/popup/SystemShortcut$AppInfo<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->containsMultipleTasks:Z

    if-eqz v0, :cond_0

    .line 179
    sget v0, Lcom/android/launcher3/R$string;->split_app_info_accessibility:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;

    iget-object v3, v3, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->taskTitle:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "accessibilityLabel":Ljava/lang/String;
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mAccessibilityActionId:I

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    return-object v1

    .line 184
    .end local v0    # "accessibilityLabel":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 190
    .local p0, "this":Lcom/android/launcher3/popup/SystemShortcut$AppInfo;, "Lcom/android/launcher3/popup/SystemShortcut$AppInfo<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mTarget:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->dismissTaskMenuView(Landroid/content/Context;)V

    .line 191
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 192
    .local v0, "sourceBounds":Landroid/graphics/Rect;
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mTarget:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 193
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 192
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->startDetailsActivityForInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 195
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 196
    return-void
.end method
