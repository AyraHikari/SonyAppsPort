.class public final Lcom/android/launcher3/widget/picker/WidgetsListHeader;
.super Landroid/widget/LinearLayout;
.source "WidgetsListHeader.java"

# interfaces
.implements Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;
    }
.end annotation


# instance fields
.field private mAppIcon:Landroid/widget/ImageView;

.field private mEnableIconUpdateAnimation:Z

.field private mExpandToggle:Landroid/widget/CheckBox;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field private final mIconSize:I

.field private mIsExpanded:Z

.field private mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsExpanded(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    .line 83
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    .line 84
    .local v1, "activity":Lcom/android/launcher3/views/ActivityContext;
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 85
    .local v2, "grid":Lcom/android/launcher3/DeviceProfile;
    sget-object v3, Lcom/android/launcher3/R$styleable;->WidgetsListRowHeader:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/android/launcher3/R$styleable;->WidgetsListRowHeader_appIconSize:I

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    .line 89
    return-void
.end method

.method private applyDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 188
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    .line 191
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 193
    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 194
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    if-eqz v2, :cond_0

    .line 201
    check-cast v1, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_0
    return-void
.end method

.method private applyIconAndLabel(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    .line 165
    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 166
    .local v0, "info":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setTitles(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    .line 168
    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 170
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->verifyHighRes()V

    .line 173
    return-void
.end method

.method private applyIconAndLabel(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    .line 241
    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 242
    .local v0, "info":Lcom/android/launcher3/model/data/PackageItemInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setTitles(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V

    .line 244
    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->isWidgetListShown()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 246
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->verifyHighRes()V

    .line 249
    return-void
.end method

.method static synthetic lambda$setTitles$1(Lcom/android/launcher3/model/WidgetItem;)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/WidgetItem;

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method private setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/data/PackageItemInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .line 178
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    if-eqz v0, :cond_1

    .line 181
    nop

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 181
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 185
    :cond_1
    return-void
.end method

.method private setTitles(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 7
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "resources":Landroid/content/res/Resources;
    iget v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    return-void

    .line 215
    :cond_0
    iget v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    if-lez v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$string;->widgets_count:I

    iget v4, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    invoke-static {v1, v3, v4}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "widgetsCount":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->shortcuts_count:I

    iget v5, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "shortcutsCount":Ljava/lang/String;
    sget v4, Lcom/android/launcher3/R$string;->widgets_and_shortcuts_count:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .end local v3    # "shortcutsCount":Ljava/lang/String;
    .local v1, "subtitle":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "subtitle":Ljava/lang/String;
    :cond_1
    iget v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    if-lez v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$string;->widgets_count:I

    iget v4, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    invoke-static {v1, v3, v4}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "subtitle":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v1    # "subtitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/launcher3/R$string;->shortcuts_count:I

    iget v4, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    invoke-static {v1, v3, v4}, Lcom/android/launcher3/util/PluralMessageFormat;->getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1    # "subtitle":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private setTitles(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda0;-><init>()V

    .line 255
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    return-void
.end method


# virtual methods
.method public applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyIconAndLabel(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    .line 161
    return-void
.end method

.method public applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    .line 236
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyIconAndLabel(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V

    .line 237
    return-void
.end method

.method synthetic lambda$setOnExpandChangeListener$0$com-android-launcher3-widget-picker-WidgetsListHeader(Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;Landroid/view/View;)V
    .locals 1
    .param p1, "onExpandChangeListener"    # Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;
    .param p2, "view"    # Landroid/view/View;

    .line 135
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    invoke-interface {p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;->onExpansionChange(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 280
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 281
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mergeDrawableStates([I[I)[I

    .line 282
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    sget v0, Lcom/android/launcher3/R$id;->app_icon:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mAppIcon:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/android/launcher3/R$id;->app_title:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mTitle:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/android/launcher3/R$id;->app_subtitle:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mSubtitle:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/android/launcher3/R$id;->toggle:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mExpandToggle:Landroid/widget/CheckBox;

    .line 98
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 124
    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    .line 266
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 268
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setIcon(Lcom/android/launcher3/model/data/PackageItemInfo;)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mEnableIconUpdateAnimation:Z

    .line 272
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "isExpanded"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIsExpanded:Z

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mExpandToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    return-void
.end method

.method public setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-ne p1, v0, :cond_0

    return-void

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->refreshDrawableState()V

    .line 155
    return-void
.end method

.method public setOnExpandChangeListener(Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V
    .locals 1
    .param p1, "onExpandChangeListener"    # Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;

    .line 134
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public verifyHighRes()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 293
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    .line 295
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/icons/IconCache;->updateIconInBackground(Lcom/android/launcher3/icons/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/cache/HandlerRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->mIconLoadRequest:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    .line 298
    .end local v0    # "info":Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    :cond_1
    return-void
.end method
