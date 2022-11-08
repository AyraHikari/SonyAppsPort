.class public Lcom/android/launcher3/views/OptionsPopupView;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "OptionsPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "Lcom/android/launcher3/Launcher;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private final mItemMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldAddArrow:Z

.field private mTargetRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$6qGgmQNuWcO7ZripzAwtPnpRTgk(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->startSettings(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NF9IRgQh6XF9g8qF1c_COh67JiE(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->startWallpaperPicker(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pAmZ81tgdasP-vyIfkVDZFKhjAk(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/OptionsPopupView;->onWidgetsClicked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/OptionsPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    .line 75
    return-void
.end method

.method public static getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;
    .locals 20
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->existsStyleWallpapers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget v1, Lcom/android/launcher3/R$string;->styles_wallpaper_button_text:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/launcher3/R$string;->wallpaper_button_text:I

    :goto_0
    move v4, v1

    .line 185
    .local v4, "resString":I
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->existsStyleWallpapers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget v1, Lcom/android/launcher3/R$drawable;->ic_palette:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/launcher3/R$drawable;->ic_wallpaper:I

    :goto_1
    move v5, v1

    .line 187
    .local v5, "resDrawable":I
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v7, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda0;-><init>()V

    move-object v2, v1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget v10, Lcom/android/launcher3/R$string;->widget_button_text:I

    sget v11, Lcom/android/launcher3/R$drawable;->ic_widget:I

    sget-object v12, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v13, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda1;

    invoke-direct {v13}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda1;-><init>()V

    move-object v8, v1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    sget v16, Lcom/android/launcher3/R$string;->settings_button_text:I

    sget v17, Lcom/android/launcher3/R$drawable;->ic_setting:I

    sget-object v18, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v19, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda2;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/views/OptionsPopupView$$ExternalSyntheticLambda2;-><init>()V

    move-object v14, v1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v0
.end method

.method private handleViewClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 93
    .local v0, "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 94
    return v1

    .line 96
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v2}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/launcher3/views/OptionsPopupView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 99
    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/OptionsPopupView;->close(Z)V

    .line 101
    return v1

    .line 103
    :cond_2
    return v1
.end method

.method private static onWidgetsClicked(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/OptionsPopupView;->openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openWidgets(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    .locals 2
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget v0, Lcom/android/launcher3/R$string;->safemode_widget_error:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 220
    .local v0, "floatingView":Lcom/android/launcher3/AbstractFloatingView;
    if-eqz v0, :cond_1

    .line 221
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    return-object v1

    .line 223
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    move-result-object v1

    return-object v1
.end method

.method static placeholderInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 267
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 268
    .local v0, "placeholderInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iput-object p0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 269
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 270
    const/16 v1, -0x6c

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 271
    return-object v0
.end method

.method public static show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p3, "shouldAddArrow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;Z)",
            "Lcom/android/launcher3/views/OptionsPopupView;"
        }
    .end annotation

    .line 139
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;ZI)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object v0

    return-object v0
.end method

.method public static show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;ZI)Lcom/android/launcher3/views/OptionsPopupView;
    .locals 6
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "targetRect"    # Landroid/graphics/RectF;
    .param p3, "shouldAddArrow"    # Z
    .param p4, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;ZI)",
            "Lcom/android/launcher3/views/OptionsPopupView;"
        }
    .end annotation

    .line 145
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/views/OptionsPopupView$OptionItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->longpress_options_menu:I

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OptionsPopupView;

    .line 147
    .local v0, "popup":Lcom/android/launcher3/views/OptionsPopupView;
    iput-object p1, v0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    .line 148
    invoke-virtual {v0, p3}, Lcom/android/launcher3/views/OptionsPopupView;->setShouldAddArrow(Z)V

    .line 150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    .line 151
    .local v2, "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    sget v3, Lcom/android/launcher3/R$layout;->system_shortcut:I

    .line 152
    invoke-virtual {v0, v3, v0}, Lcom/android/launcher3/views/OptionsPopupView;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 153
    .local v3, "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    if-lez p4, :cond_0

    .line 154
    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput p4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v3, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v3, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    iget-object v4, v0, Lcom/android/launcher3/views/OptionsPopupView;->mItemMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v2    # "item":Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    .end local v3    # "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/OptionsPopupView;->addPreDrawForColorExtraction(Lcom/android/launcher3/Launcher;)V

    .line 164
    invoke-virtual {v0}, Lcom/android/launcher3/views/OptionsPopupView;->show()V

    .line 165
    return-object v0
.end method

.method private static startSettings(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 228
    const-string v0, "Main"

    const-string v1, "start: startSettings"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 230
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 232
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 233
    const/4 v1, 0x1

    return v1
.end method

.method private static startWallpaperPicker(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 242
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_0
    sget v1, Lcom/android/launcher3/R$string;->msg_disabled_by_admin:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 246
    .local v1, "message":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 247
    return v2

    .line 249
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8000

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 252
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getWallpaperOffsetForCenterPage()F

    move-result v2

    .line 251
    const-string v3, "com.android.launcher3.WALLPAPER_OFFSET"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    .line 253
    const-string v2, "com.android.wallpaper.LAUNCH_SOURCE"

    const-string v3, "app_launched_launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 254
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->existsStyleWallpapers(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "com.android.launcher3.WALLPAPER_FLAVOR"

    if-nez v2, :cond_2

    .line 255
    const-string v2, "wallpaper_only"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 257
    :cond_2
    const-string v2, "focus_wallpaper"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :goto_1
    sget v2, Lcom/android/launcher3/R$string;->wallpaper_picker_package:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "pickerPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 261
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :cond_3
    invoke-static {v1}, Lcom/android/launcher3/views/OptionsPopupView;->placeholderInfo(Landroid/content/Intent;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method protected getChildrenForColorExtraction()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getChildCount()I

    move-result v0

    .line 171
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/launcher3/views/OptionsPopupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outPos"    # Landroid/graphics/Rect;

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 135
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 120
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->handleViewClick(Landroid/view/View;)Z

    .line 84
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/OptionsPopupView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    return v1

    .line 114
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/OptionsPopupView;->close(Z)V

    .line 115
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OptionsPopupView;->handleViewClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setShouldAddArrow(Z)V
    .locals 0
    .param p1, "shouldAddArrow"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mShouldAddArrow:Z

    .line 125
    return-void
.end method

.method public setTargetRect(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "targetRect"    # Landroid/graphics/RectF;

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/views/OptionsPopupView;->mTargetRect:Landroid/graphics/RectF;

    .line 79
    return-void
.end method

.method protected shouldAddArrow()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/launcher3/views/OptionsPopupView;->mShouldAddArrow:Z

    return v0
.end method
