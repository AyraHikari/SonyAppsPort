.class public Lcom/android/quickstep/views/OverviewActionsView;
.super Landroid/widget/FrameLayout;
.source "OverviewActionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;,
        Lcom/android/quickstep/views/OverviewActionsView$ActionsDisabledFlags;,
        Lcom/android/quickstep/views/OverviewActionsView$ActionsHiddenFlags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field public static final DISABLED_NO_THUMBNAIL:I = 0x4

.field public static final DISABLED_ROTATED:I = 0x2

.field public static final DISABLED_SCROLLING:I = 0x1

.field public static final HIDDEN_NON_ZERO_ROTATION:I = 0x1

.field public static final HIDDEN_NO_RECENTS:I = 0x4

.field public static final HIDDEN_NO_TASKS:I = 0x2

.field public static final HIDDEN_SPLIT_SCREEN:I = 0x8

.field private static final INDEX_CONTENT_ALPHA:I = 0x0

.field private static final INDEX_FULLSCREEN_ALPHA:I = 0x2

.field private static final INDEX_HIDDEN_FLAGS_ALPHA:I = 0x3

.field private static final INDEX_VISIBILITY_ALPHA:I = 0x1


# instance fields
.field protected mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mDisabledFlags:I

.field protected mDp:Lcom/android/launcher3/DeviceProfile;

.field private mHiddenFlags:I

.field private final mInsets:Landroid/graphics/Rect;

.field private final mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

.field private mOverviewActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/views/OverviewActionsView<",
            "TT;>.OverviewAction;>;"
        }
    .end annotation
.end field

.field private mRecentsView:Lcom/android/quickstep/views/RecentsView;

.field private mSplitButton:Landroid/widget/Button;

.field private final mTaskSize:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHiddenFlags(Lcom/android/quickstep/views/OverviewActionsView;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsets(Lcom/android/quickstep/views/OverviewActionsView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverviewActions(Lcom/android/quickstep/views/OverviewActionsView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentsView(Lcom/android/quickstep/views/OverviewActionsView;)Lcom/android/quickstep/views/RecentsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 125
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 129
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/OverviewActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 133
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mTaskSize:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->setUpdateVisibility(Z)V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/OverviewActionsView;->setupOverviewActions(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method private getBottomMargin()I
    .locals 1

    .line 287
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpaceBelow()I

    move-result v0

    return v0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewActionsHeight:I

    return v0
.end method

.method private setupOverviewActions(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 406
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    new-instance v0, Lcom/android/quickstep/views/OverviewActionsView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/OverviewActionsView$1;-><init>(Lcom/android/quickstep/views/OverviewActionsView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    .line 506
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 257
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 261
    .local v0, "alignFor3ButtonTaskbar":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/uioverrides/ApiWrapper;->getHotseatEndOffset(Landroid/content/Context;)I

    move-result v2

    .line 264
    .local v2, "additionalPadding":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/android/quickstep/views/OverviewActionsView;->setPadding(IIII)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v3, v1, v4, v1}, Lcom/android/quickstep/views/OverviewActionsView;->setPadding(IIII)V

    .line 269
    .end local v2    # "additionalPadding":I
    :goto_1
    goto :goto_2

    .line 270
    :cond_3
    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v1, v3, v1}, Lcom/android/quickstep/views/OverviewActionsView;->setPadding(IIII)V

    .line 272
    :goto_2
    return-void
.end method


# virtual methods
.method public getContentAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 2

    .line 242
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    return-object v0
.end method

.method public getFullscreenAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 2

    .line 250
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;
    .locals 2

    .line 246
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mMultiValueAlpha:Lcom/android/launcher3/util/MultiValueAlpha;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiValueAlpha;->getProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 162
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 163
    .local v0, "id":I
    sget v1, Lcom/android/launcher3/R$id;->action_mwswitch:I

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/quickstep/DualDriveUtil;->startDualDrive(Landroid/content/Context;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incMwswitchCountUse(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incMwswitchCountUseWeekly(Landroid/content/Context;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    if-nez v1, :cond_1

    .line 169
    return-void

    .line 171
    :cond_1
    sget v1, Lcom/android/launcher3/R$id;->action_screenshot:I

    if-ne v0, v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {v1}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onScreenshot()V

    .line 173
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incScreenshotCountUse(Landroid/content/Context;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incScreenshotCountUseWeekly(Landroid/content/Context;)V

    goto :goto_0

    .line 175
    :cond_2
    sget v1, Lcom/android/launcher3/R$id;->action_split:I

    if-ne v0, v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {v1}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onSplit()V

    goto :goto_0

    .line 177
    :cond_3
    sget v1, Lcom/android/launcher3/R$id;->action_popupwindow:I

    if-ne v0, v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {v1}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onSomcFreeForm()V

    .line 179
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incPopupwindowCountUse(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/launcher/idd/events/SettingsStatusEvent;->incPopupwindowCountUseWeekly(Landroid/content/Context;)V

    goto :goto_0

    .line 181
    :cond_4
    sget v1, Lcom/android/launcher3/R$id;->action_clearall:I

    if-ne v0, v1, :cond_5

    .line 182
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    invoke-interface {v1}, Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;->onClearAll()V

    .line 184
    :cond_5
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 188
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    .line 190
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    .line 191
    .local v1, "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    invoke-virtual {v1}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->updateLayout()V

    .line 192
    .end local v1    # "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 141
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 142
    sget v0, Lcom/android/launcher3/R$id;->action_screenshot:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v0, Lcom/android/launcher3/R$id;->action_split:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    .line 147
    .local v1, "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    invoke-virtual {v1}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->onFinishInflate()V

    .line 148
    .end local v1    # "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    .local p1, "callbacks":Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;, "TT;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mCallbacks:Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;

    .line 158
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 197
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    .line 199
    invoke-direct {p0}, Lcom/android/quickstep/views/OverviewActionsView;->updatePadding()V

    .line 200
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    .line 201
    .local v1, "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    invoke-virtual {v1}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->updateLayout()V

    .line 202
    .end local v1    # "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public setRecentsView(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p1, "recentsView"    # Lcom/android/quickstep/views/RecentsView;

    .line 334
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    .line 335
    return-void
.end method

.method public setSplitButtonVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 325
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    sget v0, Lcom/android/launcher3/R$id;->action_split_space:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    return-void
.end method

.method public updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "taskSize"    # Landroid/graphics/Rect;

    .line 307
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    .line 308
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateVerticalMargin(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V

    .line 311
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->overviewActionsButtonSpacing:I

    :goto_0
    const/4 v3, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 315
    sget v1, Lcom/android/launcher3/R$id;->action_split_space:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->requestLayout()V

    .line 319
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mSplitButton:Landroid/widget/Button;

    .line 320
    iget-boolean v3, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/android/launcher3/R$drawable;->ic_split_horizontal:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/android/launcher3/R$drawable;->ic_split_vertical:I

    .line 319
    :goto_2
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 322
    return-void
.end method

.method public updateDisabledFlags(IZ)V
    .locals 4
    .param p1, "disabledFlags"    # I
    .param p2, "enable"    # Z

    .line 227
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    if-eqz p2, :cond_0

    .line 228
    iget v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    goto :goto_0

    .line 230
    :cond_0
    iget v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    .line 232
    :goto_0
    iget v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDisabledFlags:I

    and-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 233
    .local v0, "isEnabled":Z
    :goto_1
    invoke-static {p0, v1}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 234
    iget-object v1, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    .line 235
    .local v2, "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    invoke-virtual {v2}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {v2, v0}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->setViewEnabled(Z)V

    .line 238
    .end local v2    # "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    :cond_2
    goto :goto_2

    .line 239
    :cond_3
    return-void
.end method

.method public updateHiddenFlags(IZ)V
    .locals 3
    .param p1, "visibilityFlags"    # I
    .param p2, "enable"    # Z

    .line 206
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    if-eqz p2, :cond_0

    .line 207
    iget v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    goto :goto_0

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mOverviewActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;

    .line 212
    .local v1, "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    invoke-virtual {v1}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget v2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mHiddenFlags:I

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;->setVisibility(I)V

    .line 215
    .end local v1    # "action":Lcom/android/quickstep/views/OverviewActionsView$OverviewAction;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>.OverviewAction;"
    :cond_1
    goto :goto_1

    .line 216
    :cond_2
    return-void
.end method

.method public updateVerticalMargin(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/android/launcher3/util/DisplayController$NavigationMode;

    .line 276
    .local p0, "this":Lcom/android/quickstep/views/OverviewActionsView;, "Lcom/android/quickstep/views/OverviewActionsView<TT;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    sget v0, Lcom/android/launcher3/R$id;->action_buttons:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OverviewActionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    .local v0, "actionParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/quickstep/views/OverviewActionsView;->mDp:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->overviewActionsTopMarginPx:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 283
    invoke-direct {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getBottomMargin()I

    move-result v4

    .line 281
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 284
    return-void
.end method
