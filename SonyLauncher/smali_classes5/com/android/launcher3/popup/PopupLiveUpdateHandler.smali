.class public abstract Lcom/android/launcher3/popup/PopupLiveUpdateHandler;
.super Ljava/lang/Object;
.source "PopupLiveUpdateHandler.java"

# interfaces
.implements Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;",
        "Landroid/view/View$OnAttachStateChangeListener;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/android/launcher3/popup/PopupLiveUpdateHandler;, "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<TT;>;"
    .local p1, "context":Landroid/content/Context;, "TT;"
    .local p2, "popupContainerWithArrow":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 50
    return-void
.end method


# virtual methods
.method public onNotificationDotsUpdated(Ljava/util/function/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/android/launcher3/popup/PopupLiveUpdateHandler;, "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<TT;>;"
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOriginalIcon()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 76
    .local v0, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 77
    .local v1, "packageUser":Lcom/android/launcher3/util/PackageUserKey;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 80
    :cond_0
    return-void
.end method

.method public onSystemShortcutsUpdated()V
    .locals 2

    .line 106
    .local p0, "this":Lcom/android/launcher3/popup/PopupLiveUpdateHandler;, "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOriginalIcon()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->showPopupContainerForIcon(Lcom/android/launcher3/BubbleTextView;)V

    .line 108
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 54
    .local p0, "this":Lcom/android/launcher3/popup/PopupLiveUpdateHandler;, "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    .line 56
    .local v0, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 63
    .local p0, "this":Lcom/android/launcher3/popup/PopupLiveUpdateHandler;, "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    .line 65
    .local v0, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected abstract showPopupContainerForIcon(Lcom/android/launcher3/BubbleTextView;)V
.end method

.method public trimNotifications(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/DotInfo;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/android/launcher3/popup/PopupLiveUpdateHandler;, "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<TT;>;"
    .local p1, "updatedDots":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/DotInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getNotificationContainer()Lcom/android/launcher3/notification/NotificationContainer;

    move-result-object v0

    .line 87
    .local v0, "notificationContainer":Lcom/android/launcher3/notification/NotificationContainer;
    if-nez v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOriginalIcon()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 91
    .local v1, "originalInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dot/DotInfo;

    .line 92
    .local v2, "dotInfo":Lcom/android/launcher3/dot/DotInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    nop

    .line 100
    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/notification/NotificationKeyData;->extractKeysOnly(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Lcom/android/launcher3/notification/NotificationContainer;->trimNotifications(Ljava/util/List;)V

    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/launcher3/notification/NotificationContainer;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    .line 96
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    .line 97
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;->mPopupContainerWithArrow:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateArrowColor()V

    .line 102
    :goto_1
    return-void
.end method
