.class public Lcom/android/launcher3/popup/PopupContainerWithArrow;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "PopupContainerWithArrow.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;,
        Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "TT;>;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;"
    }
.end annotation


# instance fields
.field protected mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private mContainerWidth:I

.field private mDeepShortcutContainer:Landroid/view/ViewGroup;

.field private final mInterceptTouchDown:Landroid/graphics/PointF;

.field private mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

.field private mNumNotifications:I

.field private mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

.field protected mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

.field private final mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartDragThreshold:I

.field private mSystemShortcutContainer:Landroid/view/ViewGroup;

.field private mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartDragThreshold(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 115
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 108
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->deep_shortcuts_start_drag_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->bg_popup_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 112
    return-void
.end method

.method public static canShow(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "icon"    # Landroid/view/View;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    instance-of v0, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private configureForLauncher(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 236
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    new-instance v0, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/LauncherPopupLiveUpdateHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 238
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$LauncherPopupItemDragHandler;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    .line 239
    new-instance v0, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 240
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addPreDrawForColorExtraction(Lcom/android/launcher3/Launcher;)V

    .line 242
    return-void
.end method

.method public static dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/launcher3/BaseDraggingActivity;

    .line 545
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 546
    .local v0, "popup":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 547
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 550
    :cond_1
    return-void
.end method

.method private getInsertIndexForSystemShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)I
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "shortcut"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 421
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->separator:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "separator":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/popup/SystemShortcut;->isLeftGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 423
    :goto_0
    return v1
.end method

.method public static getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;"
        }
    .end annotation

    .line 538
    .local p0, "context":Landroid/content/Context;, "TT;"
    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object v0
.end method

.method private getTitleForAccessibility()Ljava/lang/String;
    .locals 2

    .line 362
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    if-nez v1, :cond_0

    .line 363
    sget v1, Lcom/android/launcher3/R$string;->action_deep_shortcut:I

    goto :goto_0

    .line 364
    :cond_0
    sget v1, Lcom/android/launcher3/R$string;->shortcuts_menu_with_notifications_description:I

    .line 362
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$showForIcon$1(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "icon"    # Lcom/android/launcher3/BubbleTextView;
    .param p3, "s"    # Lcom/android/launcher3/popup/SystemShortcut$Factory;

    .line 227
    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v0

    return-object v0
.end method

.method public static showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 8
    .param p0, "icon"    # Lcom/android/launcher3/BubbleTextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            ")",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 207
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 210
    return-object v2

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 213
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    return-object v2

    .line 217
    :cond_1
    nop

    .line 218
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->popup_container:I

    .line 219
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    const/4 v5, 0x0

    .line 218
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 220
    .local v2, "container":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/Launcher;>;"
    invoke-direct {v2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    .line 222
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v3

    .line 223
    .local v3, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    nop

    .line 224
    invoke-virtual {v3, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v4

    .line 225
    invoke-virtual {v3, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v5

    .line 226
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V

    .line 227
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda1;-><init>()V

    .line 228
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 229
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 223
    invoke-virtual {v2, p0, v4, v5, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V

    .line 230
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 231
    invoke-virtual {v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 232
    return-object v2
.end method


# virtual methods
.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    .local p1, "notificationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->applyNotificationInfos(Ljava/util/List;)V

    .line 382
    :cond_0
    return-void
.end method

.method protected closeComplete()V
    .locals 3

    .line 523
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    .line 524
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 528
    .local v0, "openPopup":Lcom/android/launcher3/popup/PopupContainerWithArrow;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eq v1, v2, :cond_2

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 530
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 532
    :cond_2
    return-void
.end method

.method public createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 1
    .param p1, "updateIconUi"    # Z

    .line 435
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Z)V

    return-object v0
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 85
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
    .locals 1

    .line 123
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method protected getChildrenForColorExtraction()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 154
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-object v0
.end method

.method public getItemDragHandler()Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;
    .locals 1

    .line 164
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    return-object v0
.end method

.method protected getNotificationContainer()Lcom/android/launcher3/notification/NotificationContainer;
    .locals 1

    .line 342
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    return-object v0
.end method

.method protected getOriginalIcon()Lcom/android/launcher3/BubbleTextView;
    .locals 1

    .line 346
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method protected getSystemShortcutContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 350
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outPos"    # Landroid/graphics/Rect;

    .line 369
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 370
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 371
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 372
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 373
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 376
    return-void
.end method

.method protected getWidgetContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 354
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "info"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 401
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    nop

    .line 402
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getInsertIndexForSystemShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)I

    move-result v0

    .line 401
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v1, :cond_0

    .line 405
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 406
    .local v1, "shortcutView":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    .end local v1    # "shortcutView":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    goto :goto_0

    .line 407
    :cond_0
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 409
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    .line 410
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 407
    :cond_1
    :goto_0
    nop

    .line 412
    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    return-object v0
.end method

.method protected initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lcom/android/launcher3/popup/SystemShortcut;

    .line 396
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    sget v0, Lcom/android/launcher3/R$layout;->system_shortcut:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 150
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$getItemClickListener$0$com-android-launcher3-popup-PopupContainerWithArrow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 155
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 169
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 171
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 180
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_2
    return v1
.end method

.method protected onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/AnimatorSet;

    .line 517
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 519
    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .line 501
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    goto :goto_0

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    .line 512
    :cond_1
    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 495
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 497
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 489
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 128
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->onInterceptSwipeEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    return v1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 136
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 142
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationContainer;->onSwipeEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 145
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "originalIcon"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "shortcutCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BubbleTextView;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    .local p3, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/notification/NotificationKeyData;>;"
    .local p4, "systemShortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/popup/SystemShortcut;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    .line 254
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 256
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 257
    .local v2, "hasDeepShortcuts":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->bg_popup_item_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 261
    if-eqz v2, :cond_1

    .line 262
    nop

    .line 263
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher3/R$dimen;->system_shortcut_header_icon_touch_size:I

    .line 264
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v4, v5

    .line 262
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    .line 268
    :cond_1
    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    const/16 v4, 0x8

    if-lez v3, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-nez v3, :cond_2

    .line 271
    sget v3, Lcom/android/launcher3/R$id;->notification_container:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationContainer;

    iput-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    .line 272
    invoke-virtual {v3, v1}, Lcom/android/launcher3/notification/NotificationContainer;->setVisibility(I)V

    .line 273
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/notification/NotificationContainer;->setPopupView(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {v3, v4}, Lcom/android/launcher3/notification/NotificationContainer;->setVisibility(I)V

    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v3

    .line 280
    .local v3, "viewsToFlip":I
    iput-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 281
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_4

    .line 282
    sget v5, Lcom/android/launcher3/R$id;->deep_shortcuts_container:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    .line 284
    :cond_4
    if-eqz v2, :cond_b

    .line 285
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-lez v1, :cond_5

    .line 288
    sget v4, Lcom/android/launcher3/R$layout;->deep_shortcut:I

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 289
    .local v4, "v":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    invoke-virtual {v4}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mContainerWidth:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v4    # "v":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 292
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    .line 294
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 295
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    .line 296
    .local v4, "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    instance-of v5, v4, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v5, :cond_7

    .line 297
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    .line 298
    sget v5, Lcom/android/launcher3/R$layout;->widget_shortcut_container:I

    invoke-virtual {p0, v5, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 301
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeWidgetShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 303
    .end local v4    # "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    :cond_7
    goto :goto_3

    .line 304
    :cond_8
    sget v1, Lcom/android/launcher3/R$layout;->system_shortcut_icons:I

    invoke-virtual {p0, v1, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 306
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    .line 307
    .restart local v4    # "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    instance-of v5, v4, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-nez v5, :cond_9

    .line 308
    sget v5, Lcom/android/launcher3/R$layout;->system_shortcut_icon_only:I

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;

    .line 312
    .end local v4    # "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    :cond_9
    goto :goto_4

    :cond_a
    goto :goto_6

    .line 315
    :cond_b
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeepShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 317
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/popup/SystemShortcut;

    .line 318
    .restart local v4    # "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    sget v5, Lcom/android/launcher3/R$layout;->system_shortcut:I

    invoke-virtual {p0, v5, p0, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)Landroid/view/View;

    .line 319
    .end local v4    # "shortcut":Lcom/android/launcher3/popup/SystemShortcut;
    goto :goto_5

    .line 323
    :cond_c
    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->reorderAndShow(I)V

    .line 325
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 326
    .local v1, "originalItemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_d

    .line 327
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTitleForAccessibility()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 330
    :cond_d
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    .line 333
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 336
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    new-instance v6, Landroid/os/Handler;

    .line 337
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    .line 336
    move-object v5, v1

    move-object v7, p0

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method protected setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "animatorSetOut"    # Landroid/animation/AnimatorSet;

    .line 185
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/launcher3/R$id;->notification_container:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p2, p3}, Lcom/android/launcher3/notification/NotificationContainer;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    .line 189
    :cond_0
    return-void
.end method

.method public setPopupItemDragHandler(Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;)V
    .locals 0
    .param p1, "popupItemDragHandler"    # Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    .line 160
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mPopupItemDragHandler:Lcom/android/launcher3/popup/PopupContainerWithArrow$PopupItemDragHandler;

    .line 161
    return-void
.end method

.method protected setWidgetContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "widgetContainer"    # Landroid/view/ViewGroup;

    .line 358
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 359
    return-void
.end method

.method protected updateHiddenShortcuts()V
    .locals 5

    .line 385
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 388
    .local v0, "allowedCount":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 389
    .local v1, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 390
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 391
    .local v3, "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    if-lt v2, v0, :cond_1

    const/16 v4, 0x8

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setVisibility(I)V

    .line 389
    .end local v3    # "view":Lcom/android/launcher3/shortcuts/DeepShortcutView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 393
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method protected updateNotificationHeader()V
    .locals 4

    .line 481
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 482
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1, v0}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v1

    .line 483
    .local v1, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationContainer:Lcom/android/launcher3/notification/NotificationContainer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/notification/NotificationContainer;->updateHeader(I)V

    .line 486
    :cond_0
    return-void
.end method
