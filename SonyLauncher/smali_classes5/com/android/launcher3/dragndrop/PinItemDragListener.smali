.class public Lcom/android/launcher3/dragndrop/PinItemDragListener;
.super Lcom/android/launcher3/dragndrop/BaseItemDragListener;
.source "PinItemDragListener.java"


# instance fields
.field private final mCancelSignal:Landroid/os/CancellationSignal;

.field private final mPreviewScale:F

.field private final mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V
    .locals 6
    .param p1, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p2, "previewRect"    # Landroid/graphics/Rect;
    .param p3, "previewBitmapWidth"    # I
    .param p4, "previewViewWidth"    # I

    .line 55
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;IIF)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;IIF)V
    .locals 1
    .param p1, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p2, "previewRect"    # Landroid/graphics/Rect;
    .param p3, "previewBitmapWidth"    # I
    .param p4, "previewViewWidth"    # I
    .param p5, "previewScale"    # F

    .line 60
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;-><init>(Landroid/graphics/Rect;II)V

    .line 61
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 62
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 63
    iput p5, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewScale:F

    .line 64
    return-void
.end method

.method public static getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 120
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 122
    const-string v1, "appWidgetPreview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    return-object v1

    .line 125
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected createDragHelper()Lcom/android/launcher3/widget/PendingItemDragHelper;
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance v1, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V

    .local v0, "item":Lcom/android/launcher3/PendingAddItemInfo;
    goto :goto_0

    .line 91
    .end local v0    # "item":Lcom/android/launcher3/PendingAddItemInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 94
    .local v0, "providerInfo":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    new-instance v1, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/pm/LauncherApps$PinItemRequest;)V

    .line 96
    .local v1, "flowHandler":Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;
    new-instance v2, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;

    const/16 v3, -0x71

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;-><init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;ILcom/android/launcher3/dragndrop/PinWidgetFlowHandler;)V

    move-object v0, v2

    .line 103
    .end local v1    # "flowHandler":Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;
    .local v0, "item":Lcom/android/launcher3/PendingAddItemInfo;
    :goto_0
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    new-instance v2, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v2, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    .line 107
    .local v2, "dragHelper":Lcom/android/launcher3/widget/PendingItemDragHelper;
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v3}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 108
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v3}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewScale:F

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V

    .line 110
    :cond_1
    return-object v2
.end method

.method public bridge synthetic init(Lcom/android/launcher3/BaseActivity;Z)Z
    .locals 0

    .line 46
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result p1

    return p1
.end method

.method public init(Lcom/android/launcher3/Launcher;Z)Z
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "alreadyOnHome"    # Z

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    .line 77
    if-nez p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDragStart(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method protected postCleanup()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->postCleanup()V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 117
    return-void
.end method
