.class public Lcom/android/launcher3/notification/NotificationMainView;
.super Landroid/widget/LinearLayout;
.source "NotificationMainView.java"


# static fields
.field public static final NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

.field private static final PRIMARY_GONE_PROGRESS:F = 0.7f

.field private static final PRIMARY_MAX_PROGRESS:F = 0.6f

.field private static final PRIMARY_MIN_PROGRESS:F = 0.4f

.field private static final SECONDARY_CONTENT_MAX_PROGRESS:F = 0.6f

.field private static final SECONDARY_MAX_PROGRESS:F = 0.5f

.field private static final SECONDARY_MIN_PROGRESS:F = 0.3f


# instance fields
.field private final mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBackgroundColor:I

.field private mHeader:Landroid/view/View;

.field private mHeaderCount:Landroid/widget/TextView;

.field private mIconView:Landroid/view/View;

.field private mMainView:Landroid/view/View;

.field private final mMaxElevation:I

.field private final mMaxTransX:I

.field private mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

.field private final mNotificationSpace:I

.field private final mOutline:Landroid/graphics/Rect;

.field private mTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOutline(Lcom/android/launcher3/notification/NotificationMainView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStylRes"    # I

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    .line 100
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v0

    .line 102
    .local v0, "outlineRadius":F
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 103
    sget v2, Lcom/android/launcher3/R$attr;->popupColorPrimary:I

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->deep_shortcuts_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMaxElevation:I

    .line 108
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->notification_max_trans:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMaxTransX:I

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->notification_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationSpace:I

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setClipToOutline(Z)V

    .line 114
    new-instance v1, Lcom/android/launcher3/notification/NotificationMainView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/notification/NotificationMainView$1;-><init>(Lcom/android/launcher3/notification/NotificationMainView;F)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 120
    return-void
.end method

.method private updateBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 163
    iput p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;)V
    .locals 7
    .param p1, "notificationInfo"    # Lcom/android/launcher3/notification/NotificationInfo;

    .line 190
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    .line 191
    if-nez p1, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 195
    .local v0, "listener":Lcom/android/launcher3/notification/NotificationListener;
    if-eqz v0, :cond_1

    .line 196
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v3, v3, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsShown([Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v1, v1, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    .line 199
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    .line 200
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 205
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v3, v3, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_4

    .line 211
    iget-object v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/notification/NotificationMainView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_4
    sget-object v3, Lcom/android/launcher3/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/notification/NotificationMainView;->setTag(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNotificationInfo()Lcom/android/launcher3/notification/NotificationInfo;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    return-object v0
.end method

.method synthetic lambda$updateBackgroundColor$0$com-android-launcher3-notification-NotificationMainView(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 180
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, "newColor":I
    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->updateBackgroundColor(I)V

    .line 182
    return-void
.end method

.method public onChildDismissed()V
    .locals 4

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 325
    .local v0, "activityContext":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    .line 326
    .local v1, "popupDataProvider":Lcom/android/launcher3/popup/PopupDataProvider;
    if-nez v1, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    .line 330
    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_DISMISSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 331
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 143
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 145
    sget v0, Lcom/android/launcher3/R$id;->text_and_background:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    .local v0, "textAndBackground":Landroid/view/ViewGroup;
    sget v1, Lcom/android/launcher3/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    .line 147
    sget v1, Lcom/android/launcher3/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    .line 148
    sget v1, Lcom/android/launcher3/R$id;->popup_item_icon:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    .line 149
    sget v1, Lcom/android/launcher3/R$id;->notification_count:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mHeaderCount:Landroid/widget/TextView;

    .line 151
    sget v1, Lcom/android/launcher3/R$id;->header:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mHeader:Landroid/view/View;

    .line 152
    sget v1, Lcom/android/launcher3/R$id;->main_view:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMainView:Landroid/view/View;

    .line 153
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 157
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->invalidateOutline()V

    .line 160
    return-void
.end method

.method public onPrimaryDrag(F)V
    .locals 10
    .param p1, "progress"    # F

    .line 243
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 244
    .local v6, "absProgress":F
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v7

    .line 246
    .local v7, "width":I
    const v8, 0x3ecccccd    # 0.4f

    .line 247
    .local v8, "min":F
    const v9, 0x3f19999a    # 0.6f

    .line 249
    .local v9, "max":F
    cmpg-float v0, v6, v8

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setContentAlpha(F)V

    .line 252
    iget v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMaxElevation:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    goto :goto_0

    .line 253
    :cond_0
    cmpg-float v0, v6, v9

    if-gez v0, :cond_1

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 255
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    move v1, v8

    move v2, v9

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setContentAlpha(F)V

    .line 256
    iget v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMaxElevation:I

    int-to-float v3, v0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    goto :goto_0

    .line 258
    :cond_1
    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    move v1, v9

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setContentAlpha(F)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    .line 263
    :goto_0
    int-to-float v0, v7

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setTranslationX(F)V

    .line 264
    return-void
.end method

.method public onSecondaryDrag(F)V
    .locals 14
    .param p1, "progress"    # F

    .line 273
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 275
    .local v6, "absProgress":F
    const v7, 0x3e99999a    # 0.3f

    .line 276
    .local v7, "min":F
    const/high16 v8, 0x3f000000    # 0.5f

    .line 277
    .local v8, "max":F
    const v9, 0x3f19999a    # 0.6f

    .line 279
    .local v9, "contentMax":F
    cmpg-float v0, v6, v7

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-gez v0, :cond_0

    .line 280
    invoke-virtual {p0, v11}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 281
    invoke-virtual {p0, v11}, Lcom/android/launcher3/notification/NotificationMainView;->setContentAlpha(F)V

    .line 282
    invoke-virtual {p0, v11}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    goto :goto_1

    .line 283
    :cond_0
    cmpg-float v0, v6, v8

    if-gez v0, :cond_1

    .line 284
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    move v1, v7

    move v2, v8

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 285
    invoke-virtual {p0, v11}, Lcom/android/launcher3/notification/NotificationMainView;->setContentAlpha(F)V

    .line 286
    invoke-virtual {p0, v11}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/notification/NotificationMainView;->setAlpha(F)V

    .line 289
    cmpl-float v0, v6, v9

    if-lez v0, :cond_2

    .line 290
    move v0, v10

    goto :goto_0

    .line 291
    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    move v1, v8

    move v2, v9

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    .line 289
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setContentAlpha(F)V

    .line 292
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMaxElevation:I

    int-to-float v4, v0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    move v1, v8

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setElevation(F)V

    .line 295
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v12

    .line 296
    .local v12, "width":I
    int-to-float v0, v12

    mul-float/2addr v0, v6

    float-to-int v13, v0

    .line 297
    .local v13, "crop":I
    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_3

    .line 298
    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationSpace:I

    int-to-float v3, v0

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    goto :goto_2

    .line 299
    :cond_3
    iget v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationSpace:I

    int-to-float v0, v0

    :goto_2
    float-to-int v0, v0

    .line 300
    .local v0, "space":I
    cmpg-float v1, p1, v11

    const/4 v2, 0x0

    if-gez v1, :cond_4

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v13

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 302
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v3

    sub-int v4, v13, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 305
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mOutline:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 308
    :goto_3
    iget v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMaxTransX:I

    int-to-float v1, v1

    sub-float/2addr v10, v6

    mul-float/2addr v1, v10

    .line 309
    .local v1, "contentTransX":F
    cmpg-float v2, p1, v11

    if-gez v2, :cond_5

    .line 310
    move v2, v1

    goto :goto_4

    .line 311
    :cond_5
    neg-float v2, v1

    .line 309
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/launcher3/notification/NotificationMainView;->setContentTranslationX(F)V

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->invalidateOutline()V

    .line 313
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 225
    return-void
.end method

.method public setContentTranslationX(F)V
    .locals 1
    .param p1, "transX"    # F

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mMainView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 233
    return-void
.end method

.method public updateBackgroundColor(ILandroid/animation/AnimatorSet;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "animatorSetOut"    # Landroid/animation/AnimatorSet;

    .line 177
    iget v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    .line 178
    .local v0, "oldColor":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 179
    .local v1, "colors":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher3/notification/NotificationMainView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/notification/NotificationMainView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/notification/NotificationMainView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    return-void
.end method

.method public updateHeader(I)V
    .locals 3
    .param p1, "notificationCount"    # I

    .line 129
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 130
    const-string v0, ""

    .line 131
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x4

    .local v1, "visibility":I
    goto :goto_0

    .line 133
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "visibility":I
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 137
    .restart local v1    # "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mHeaderCount:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mHeaderCount:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    return-void
.end method
