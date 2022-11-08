.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.source "LauncherAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ADD_TO_WORKSPACE:I

.field public static final DEEP_SHORTCUTS:I

.field public static final DISMISS_PREDICTION:I

.field public static final INVALID:I = -0x1

.field protected static final MOVE:I

.field protected static final MOVE_TO_WORKSPACE:I

.field public static final PIN_PREDICTION:I

.field public static final RECONFIGURE:I

.field public static final REMOVE:I

.field protected static final RESIZE:I

.field public static final SHORTCUTS_AND_NOTIFICATIONS:I

.field private static final TAG:Ljava/lang/String; = "LauncherAccessibilityDelegate"

.field public static final UNINSTALL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget v0, Lcom/android/launcher3/R$id;->action_remove:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->REMOVE:I

    .line 59
    sget v0, Lcom/android/launcher3/R$id;->action_uninstall:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    .line 60
    sget v0, Lcom/android/launcher3/R$id;->action_dismiss_prediction:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    .line 61
    sget v0, Lcom/android/launcher3/R$id;->action_pin_prediction:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->PIN_PREDICTION:I

    .line 62
    sget v0, Lcom/android/launcher3/R$id;->action_reconfigure:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    .line 64
    sget v0, Lcom/android/launcher3/R$id;->action_add_to_workspace:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    .line 65
    sget v0, Lcom/android/launcher3/R$id;->action_move:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    .line 66
    sget v0, Lcom/android/launcher3/R$id;->action_move_to_workspace:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    .line 67
    sget v0, Lcom/android/launcher3/R$id;->action_resize:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    .line 68
    sget v0, Lcom/android/launcher3/R$id;->action_deep_shortcuts:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    .line 69
    sget v0, Lcom/android/launcher3/R$id;->action_shortcuts_and_notifications:I

    sput v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->REMOVE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->remove_drop_target_label:I

    const/16 v4, 0x34

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->UNINSTALL:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->uninstall_drop_target_label:I

    const/16 v5, 0x31

    invoke-direct {v2, p0, v1, v3, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DISMISS_PREDICTION:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->dismiss_prediction_label:I

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RECONFIGURE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->gadget_setup_text:I

    const/16 v4, 0x21

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_add_to_workspace:I

    const/16 v4, 0x2c

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_move:I

    const/16 v5, 0x29

    invoke-direct {v2, p0, v1, v3, v5}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_move_to_workspace:I

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_resize:I

    const/16 v4, 0x2e

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    new-instance v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v3, Lcom/android/launcher3/R$string;->action_deep_shortcut:I

    const/16 v4, 0x2f

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    new-instance v3, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    sget v5, Lcom/android/launcher3/R$string;->shortcuts_menu_with_notifications_description:I

    invoke-direct {v3, p0, v1, v5, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method public static getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;
    .locals 4
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "host"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;"
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 138
    .local v0, "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    .line 140
    .local v1, "delegate":Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    .line 142
    return-object v2

    .line 135
    .end local v0    # "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .end local v1    # "delegate":Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;
    .locals 11
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 196
    .local v1, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v1, :cond_0

    .line 197
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .local v2, "layout":Lcom/android/launcher3/CellLayout;
    goto :goto_0

    .line 204
    .end local v2    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 206
    .restart local v2    # "layout":Lcom/android/launcher3/CellLayout;
    :goto_0
    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 207
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v3, v5

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v3, v4

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 208
    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    :cond_2
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_increase_width:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_width_increase:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanX:I

    if-le v3, v5, :cond_4

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    if-le v3, v4, :cond_4

    .line 217
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_decrease_width:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_width_decrease:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_4
    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    .line 226
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v5, v6

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    sub-int/2addr v5, v4

    iget v6, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    .line 227
    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    :cond_5
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_increase_height:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_height_increase:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    iget v5, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->minSpanY:I

    if-le v3, v5, :cond_7

    iget v3, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    if-le v3, v4, :cond_7

    .line 236
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$string;->action_decrease_height:I

    sget v8, Lcom/android/launcher3/R$drawable;->ic_widget_height_decrease:I

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_7
    return-object v0
.end method

.method private performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "host"    # Landroid/view/View;
    .param p3, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 248
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 249
    .local v1, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 251
    sget v2, Lcom/android/launcher3/R$string;->action_increase_width:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 252
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v2, v3

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 253
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v4

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 254
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 255
    :cond_1
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 256
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    .line 258
    :cond_2
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 259
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    goto :goto_0

    .line 260
    :cond_3
    sget v2, Lcom/android/launcher3/R$string;->action_decrease_width:I

    if-ne p1, v2, :cond_4

    .line 261
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 262
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    goto :goto_0

    .line 263
    :cond_4
    sget v2, Lcom/android/launcher3/R$string;->action_increase_height:I

    if-ne p1, v2, :cond_6

    .line 264
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v4, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v4, v5

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_5

    .line 265
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 266
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    .line 268
    :cond_5
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 269
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    goto :goto_0

    .line 270
    :cond_6
    sget v2, Lcom/android/launcher3/R$string;->action_decrease_height:I

    if-ne p1, v2, :cond_7

    .line 271
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 272
    iget v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    sub-int/2addr v2, v3

    iput v2, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    .line 275
    :cond_7
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 276
    move-object v2, p2

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    iget v5, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v6, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v2, v4, v5, v6}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 279
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 280
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    sget v4, Lcom/android/launcher3/R$string;->widget_resized:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 281
    return v3
.end method


# virtual methods
.method public addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 11
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "accessibility"    # Z

    .line 375
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 376
    .local v0, "coordinates":[I
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v7

    .line 377
    .local v7, "screenId":I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_0

    .line 378
    const/4 v1, 0x0

    return v1

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v10, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, v7

    move-object v5, v0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    invoke-static {v10}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v9, v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 406
    return v2
.end method

.method announceConfirmation(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 7
    .param p1, "item"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "fromKeyboard"    # Z

    .line 290
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 291
    return v1

    .line 294
    :cond_0
    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    invoke-direct {v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    iput-object p2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    iput-object p1, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    .line 298
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    goto :goto_0

    .line 300
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    .line 304
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 305
    .local v0, "pos":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 306
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 308
    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 309
    .local v2, "options":Lcom/android/launcher3/dragndrop/DragOptions;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    .line 310
    iput-boolean p3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isKeyboardDrag:Z

    .line 311
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v2, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    .line 313
    if-eqz p3, :cond_3

    .line 314
    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$layout;->keyboard_drag_and_drop:I

    iget-object v6, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher3/Launcher;

    .line 315
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    .line 316
    .local v1, "popup":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->showForIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 317
    .end local v1    # "popup":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
    goto :goto_1

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1, p2, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 320
    :goto_1
    return v3
.end method

.method protected findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I
    .locals 9
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "outCoordinates"    # [I

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 328
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScreenOrder()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    .line 332
    .local v1, "workspaceScreens":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    .line 333
    .local v2, "screenIndex":I
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 334
    .local v3, "screenId":I
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 336
    .local v4, "layout":Lcom/android/launcher3/CellLayout;
    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    .line 337
    .local v5, "found":Z
    const/4 v2, 0x0

    .line 338
    :goto_0
    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 339
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 340
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 341
    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p2, v6, v7}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_0
    if-eqz v5, :cond_1

    .line 346
    return v3

    .line 349
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    .line 350
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v6

    .line 351
    .local v6, "emptyScreenIds":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 353
    const/4 v7, -0x1

    return v7

    .line 356
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    .line 357
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 358
    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v4, p2, v7, v8}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    .line 360
    if-nez v5, :cond_3

    .line 361
    const-string v7, "LauncherAccessibilityDelegate"

    const-string v8, "Not enough space on an empty screen"

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3
    return v3
.end method

.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<Lcom/android/launcher3/Launcher;>.LauncherAction;>;"
    invoke-static {p2}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    .line 101
    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 106
    .local v3, "target":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v3, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v3    # "target":Lcom/android/launcher3/ButtonDropTarget;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    :cond_4
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    .line 118
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_5
    :goto_2
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_7

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    sget v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_7
    return-void
.end method

.method synthetic lambda$addToWorkspace$4$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "screenId"    # I
    .param p3, "coordinates"    # [I
    .param p4, "accessibility"    # Z

    .line 381
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 382
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 383
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    const/16 v6, -0x64

    aget v8, p3, v1

    aget v9, p3, v2

    move-object v5, v0

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 387
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    .line 388
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 387
    invoke-virtual {v1, v3, v2, p4}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    .line 391
    sget v1, Lcom/android/launcher3/R$string;->item_added_to_workspace:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 392
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_1

    .line 393
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    .line 394
    .local v0, "info":Lcom/android/launcher3/PendingAddItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    .line 395
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    invoke-virtual {v1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 396
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/Launcher;

    const/16 v5, -0x64

    iget v8, v0, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iget v9, v0, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    move-object v4, v0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    .end local v0    # "info":Lcom/android/launcher3/PendingAddItemInfo;
    .end local v1    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    goto :goto_0

    .line 398
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    .line 399
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 400
    .local v0, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    aget v7, p3, v1

    aget v8, p3, v2

    move-object v4, v0

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 403
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2, p4}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    goto :goto_1

    .line 398
    .end local v0    # "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_2
    :goto_0
    nop

    .line 405
    :goto_1
    return-void
.end method

.method synthetic lambda$getSupportedResizeActions$0$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 213
    sget v0, Lcom/android/launcher3/R$string;->action_increase_width:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getSupportedResizeActions$1$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 221
    sget v0, Lcom/android/launcher3/R$string;->action_decrease_width:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getSupportedResizeActions$2$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 232
    sget v0, Lcom/android/launcher3/R$string;->action_increase_height:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getSupportedResizeActions$3$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 240
    sget v0, Lcom/android/launcher3/R$string;->action_decrease_height:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$moveToWorkspace$5$com-android-launcher3-accessibility-LauncherAccessibilityDelegate(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 433
    sget v0, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 434
    return-void
.end method

.method public moveToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 11
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 416
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 417
    move-object v8, p1

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 418
    .local v8, "info":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    .line 420
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 421
    .local v9, "coordinates":[I
    invoke-virtual {p0, p1, v9}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v10

    .line 422
    .local v10, "screenId":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_0

    .line 423
    return v3

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    const/16 v4, -0x64

    aget v6, v9, v3

    aget v7, v9, v1

    move-object v3, v8

    move v5, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 431
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return v1
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "action"    # I
    .param p4, "fromKeyboard"    # Z

    .line 148
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne p3, v3, :cond_4

    .line 149
    const/4 v3, 0x0

    .line 153
    .local v3, "dragCondition":Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    instance-of v4, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 154
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v3

    goto :goto_1

    .line 155
    :cond_0
    instance-of v4, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v4, :cond_2

    .line 156
    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/views/BubbleTextHolder;

    .line 157
    .local v4, "holder":Lcom/android/launcher3/views/BubbleTextHolder;
    invoke-interface {v4}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v4}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 160
    .end local v4    # "holder":Lcom/android/launcher3/views/BubbleTextHolder;
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 161
    .end local v3    # "dragCondition":Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    :cond_4
    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE:I

    if-ne p3, v3, :cond_5

    .line 162
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    return v0

    .line 163
    :cond_5
    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->ADD_TO_WORKSPACE:I

    if-ne p3, v3, :cond_6

    .line 164
    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    return v0

    .line 165
    :cond_6
    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->MOVE_TO_WORKSPACE:I

    if-ne p3, v3, :cond_7

    .line 166
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->moveToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    return v0

    .line 167
    :cond_7
    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->RESIZE:I

    if-ne p3, v3, :cond_8

    .line 168
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 169
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;

    move-result-object v3

    .line 170
    .local v3, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .local v4, "pos":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 172
    iget-object v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/Launcher;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v5, v6, v3, v1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object v1

    .line 173
    .local v1, "popup":Lcom/android/launcher3/popup/ArrowPopup;
    invoke-virtual {v1}, Lcom/android/launcher3/popup/ArrowPopup;->requestFocus()Z

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/popup/ArrowPopup;->setOnCloseCallback(Ljava/lang/Runnable;)V

    .line 175
    return v2

    .line 176
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v1    # "popup":Lcom/android/launcher3/popup/ArrowPopup;
    .end local v3    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    .end local v4    # "pos":Landroid/graphics/Rect;
    :cond_8
    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->DEEP_SHORTCUTS:I

    if-eq p3, v3, :cond_c

    sget v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->SHORTCUTS_AND_NOTIFICATIONS:I

    if-ne p3, v3, :cond_9

    goto :goto_3

    .line 182
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_b

    aget-object v5, v0, v4

    .line 183
    .local v5, "dropTarget":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v5, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 184
    invoke-virtual {v5}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v6

    if-ne p3, v6, :cond_a

    .line 185
    invoke-virtual {v5, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 186
    return v2

    .line 182
    .end local v5    # "dropTarget":Lcom/android/launcher3/ButtonDropTarget;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    :cond_b
    return v1

    .line 177
    :cond_c
    :goto_3
    instance-of v3, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    goto :goto_4

    .line 178
    :cond_d
    instance-of v3, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v3, :cond_e

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {v0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    goto :goto_4

    :cond_e
    nop

    :goto_4
    nop

    .line 180
    .local v0, "btv":Lcom/android/launcher3/BubbleTextView;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v3

    if-eqz v3, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method
