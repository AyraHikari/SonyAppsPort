.class public Lcom/android/launcher3/popup/SystemShortcut$Widgets;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Widgets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Lcom/android/launcher3/Launcher;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "originalView"    # Landroid/view/View;

    .line 130
    sget v1, Lcom/android/launcher3/R$drawable;->ic_widget:I

    sget v2, Lcom/android/launcher3/R$string;->widget_button_text:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 138
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->widgets_bottom_sheet:I

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->mTarget:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    .line 139
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;

    .line 140
    .local v0, "widgetsBottomSheet":Lcom/android/launcher3/widget/WidgetsBottomSheet;
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->populateAndShow(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 142
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 143
    return-void
.end method
