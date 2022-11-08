.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroidx/appcompat/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 234
    sget v0, Landroidx/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 238
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    const v0, 0x800013

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 204
    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar$1;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 223
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar$2;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->Toolbar:[I

    const/4 v8, 0x0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-static {v0, v9, v1, v10, v8}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v11

    .line 243
    .local v11, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget-object v2, Landroidx/appcompat/R$styleable;->Toolbar:[I

    .line 244
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 243
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 246
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v11, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 247
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v11, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 248
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    .line 249
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 v1, 0x30

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    .line 252
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleMargin:I

    invoke-virtual {v11, v0, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 253
    .local v0, "titleMargin":I
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v11, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {v11, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 257
    :cond_0
    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    iput v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 259
    sget v1, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/4 v2, -0x1

    invoke-virtual {v11, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 260
    .local v1, "marginStart":I
    if-ltz v1, :cond_1

    .line 261
    iput v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 264
    :cond_1
    sget v3, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v11, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 265
    .local v3, "marginEnd":I
    if-ltz v3, :cond_2

    .line 266
    iput v3, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 269
    :cond_2
    sget v4, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v11, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 270
    .local v4, "marginTop":I
    if-ltz v4, :cond_3

    .line 271
    iput v4, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 274
    :cond_3
    sget v5, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v11, v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 276
    .local v5, "marginBottom":I
    if-ltz v5, :cond_4

    .line 277
    iput v5, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 280
    :cond_4
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v11, v6, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    .line 282
    sget v2, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    .line 283
    const/high16 v6, -0x80000000

    invoke-virtual {v11, v2, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 285
    .local v2, "contentInsetStart":I
    sget v12, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 286
    invoke-virtual {v11, v12, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 288
    .local v12, "contentInsetEnd":I
    sget v13, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 289
    invoke-virtual {v11, v13, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 290
    .local v13, "contentInsetLeft":I
    sget v14, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 291
    invoke-virtual {v11, v14, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 293
    .local v14, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 294
    iget-object v15, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v15, v13, v14}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 296
    if-ne v2, v6, :cond_5

    if-eq v12, v6, :cond_6

    .line 298
    :cond_5
    iget-object v15, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v15, v2, v12}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 301
    :cond_6
    sget v15, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {v11, v15, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    iput v15, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 303
    sget v15, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {v11, v15, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 306
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 309
    sget v6, Landroidx/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 310
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 311
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    :cond_7
    sget v15, Landroidx/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v11, v15}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 315
    .local v15, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 316
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 320
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v7, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 321
    sget v8, Landroidx/appcompat/R$styleable;->Toolbar_popupTheme:I

    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "titleMargin":I
    .local v17, "titleMargin":I
    invoke-virtual {v11, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 323
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    .local v0, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 325
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_9
    sget v8, Landroidx/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v11, v8}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 328
    .local v8, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 329
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    :cond_a
    move-object/from16 v18, v0

    .end local v0    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_b

    .line 334
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :cond_b
    move-object/from16 v19, v0

    .end local v0    # "logo":Landroid/graphics/drawable/Drawable;
    .local v19, "logo":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 338
    .local v0, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 339
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 342
    :cond_c
    move-object/from16 v20, v0

    .end local v0    # "logoDesc":Ljava/lang/CharSequence;
    .local v20, "logoDesc":Ljava/lang/CharSequence;
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 343
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 346
    :cond_d
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 347
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 350
    :cond_e
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_menu:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    sget v0, Landroidx/appcompat/R$styleable;->Toolbar_menu:I

    move/from16 v21, v1

    const/4 v1, 0x0

    .end local v1    # "marginStart":I
    .local v21, "marginStart":I
    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    goto :goto_0

    .line 350
    .end local v21    # "marginStart":I
    .restart local v1    # "marginStart":I
    :cond_f
    move/from16 v21, v1

    .line 354
    .end local v1    # "marginStart":I
    .restart local v21    # "marginStart":I
    :goto_0
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 355
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2164
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 2165
    .local v0, "isRtl":Z
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 2166
    .local v1, "childCount":I
    nop

    .line 2167
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 2166
    invoke-static {p2, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 2169
    .local v2, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2171
    if-eqz v0, :cond_3

    .line 2172
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 2173
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2174
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2175
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2176
    invoke-direct {p0, v6}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 2177
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2172
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 2181
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 2182
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2183
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2184
    .restart local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_4

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2185
    invoke-direct {p0, v6}, Landroidx/appcompat/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 2186
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2181
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2190
    .end local v3    # "i":I
    :cond_5
    :goto_3
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1535
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1537
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1538
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1539
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1540
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v1

    .restart local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    goto :goto_0

    .line 1542
    .end local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1544
    .restart local v1    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1546
    if-eqz p2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1547
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1550
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1552
    :goto_1
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    .line 2309
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2310
    new-instance v0, Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    .line 2312
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .line 705
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 708
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .line 1171
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 1172
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1174
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1175
    .local v0, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1176
    new-instance v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1178
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1179
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1181
    .end local v0    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .line 1184
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1186
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1187
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuViewItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1188
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 1189
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1190
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1191
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1194
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .line 1506
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1507
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1509
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1510
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1511
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .line 2193
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 2194
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 2195
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2196
    .local v2, "hGrav":I
    packed-switch v2, :pswitch_data_0

    .line 2202
    :pswitch_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    .line 2200
    :pswitch_1
    return v2

    .line 2202
    :cond_0
    const/4 v3, 0x3

    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2114
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2115
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2116
    .local v3, "alignmentOffset":I
    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Landroidx/appcompat/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 2126
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 2127
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 2128
    .local v5, "paddingBottom":I
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v6

    .line 2129
    .local v6, "height":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    .line 2130
    .local v7, "space":I
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    .line 2131
    .local v8, "spaceAbove":I
    iget v9, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v8, v9, :cond_1

    .line 2132
    iget v8, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_1

    .line 2121
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottom":I
    .end local v6    # "height":I
    .end local v7    # "space":I
    .end local v8    # "spaceAbove":I
    :sswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    return v2

    .line 2118
    :sswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    return v2

    .line 2134
    .restart local v4    # "paddingTop":I
    .restart local v5    # "paddingBottom":I
    .restart local v6    # "height":I
    .restart local v7    # "space":I
    .restart local v8    # "spaceAbove":I
    :cond_1
    sub-int v9, v6, v5

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    sub-int/2addr v9, v4

    .line 2136
    .local v9, "spaceBelow":I
    iget v10, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v9, v10, :cond_2

    .line 2137
    iget v10, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v9

    sub-int v10, v8, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2140
    .end local v9    # "spaceBelow":I
    :cond_2
    :goto_1
    add-int v2, v4, v8

    return v2

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .line 2145
    and-int/lit8 v0, p1, 0x70

    .line 2146
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 2152
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    .line 2150
    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2211
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2212
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 2213
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2212
    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1197
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 2217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2218
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2068
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2069
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 2070
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 2071
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2072
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 2073
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2074
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2075
    .local v7, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v8, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v1

    .line 2076
    .local v8, "l":I
    iget v9, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v2

    .line 2077
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2078
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2079
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2080
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2081
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    .line 2072
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2083
    .end local v5    # "i":I
    :cond_0
    return v3
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 2281
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2088
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2089
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2090
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2091
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2092
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2093
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2094
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2095
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 2096
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2102
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2103
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2104
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2105
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2106
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2107
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2108
    iget v4, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2109
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1677
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1679
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1680
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1681
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1682
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1683
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1684
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1685
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1687
    nop

    .line 1688
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1687
    invoke-static {p2, v2, v4}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1689
    .local v2, "childWidthMeasureSpec":I
    nop

    .line 1690
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v8

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1689
    invoke-static {p4, v4, v8}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1693
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1694
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1654
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 1655
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1654
    invoke-static {p2, v1, v2}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1657
    .local v1, "childWidthSpec":I
    nop

    .line 1658
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1657
    invoke-static {p4, v2, v3}, Landroidx/appcompat/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1661
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1662
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1663
    if-eqz v3, :cond_0

    .line 1664
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .line 1665
    :cond_0
    move v5, p6

    :goto_0
    nop

    .line 1666
    .local v5, "size":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1668
    .end local v5    # "size":I
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1669
    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .line 1590
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1591
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1592
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .line 1701
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1703
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 1704
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1705
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1706
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 1707
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_1

    .line 1708
    return v1

    .line 1704
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1711
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .line 2272
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2274
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2275
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2274
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2277
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2278
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 525
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2246
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 735
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_0
    nop

    .line 737
    .local v0, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 740
    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 603
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    .line 606
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 4

    .line 1516
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1519
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1520
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1521
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1522
    .local v0, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 1523
    const/4 v1, 0x2

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1524
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1525
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroidx/appcompat/widget/Toolbar$3;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/Toolbar$3;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1532
    .end local v0    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2241
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2223
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2228
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2229
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2230
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2231
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2232
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2233
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2235
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapseContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1052
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1098
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1287
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1413
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1414
    goto :goto_0

    .line 1415
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1413
    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1331
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1352
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1266
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1369
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1370
    goto :goto_0

    .line 1371
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1369
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 4

    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, "hasActions":Z
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1467
    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    .line 1468
    .local v1, "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 1470
    .end local v1    # "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_1
    if-eqz v0, :cond_2

    .line 1471
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 1472
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1470
    :goto_1
    return v1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .line 1485
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1486
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 1487
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1485
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .line 1500
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1501
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 1502
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1500
    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1451
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1453
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1451
    :goto_0
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 662
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 701
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1145
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1146
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 930
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1023
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .locals 1

    .line 2336
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1166
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1167
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .line 2340
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 383
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 806
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getSubtitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 2329
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 749
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .line 484
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .line 461
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .line 415
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 438
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 2320
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .locals 2

    .line 2252
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2253
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    .line 2255
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mWrapper:Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .line 721
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 559
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 1210
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1211
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 541
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 535
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .line 611
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 612
    return v1

    .line 615
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 616
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 617
    return v1

    .line 620
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 621
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 622
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 623
    const/4 v1, 0x1

    return v1

    .line 621
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 626
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1596
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1597
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1598
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1632
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1633
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1636
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1637
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1638
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 1639
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1643
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1644
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingHover:Z

    .line 1647
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 33
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1850
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1851
    .local v1, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1852
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v5

    .line 1853
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1854
    .local v6, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1855
    .local v7, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1856
    .local v8, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 1857
    .local v9, "paddingBottom":I
    move v10, v6

    .line 1858
    .local v10, "left":I
    sub-int v11, v4, v7

    .line 1860
    .local v11, "right":I
    iget-object v12, v0, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 1861
    .local v12, "collapsingMargins":[I
    aput v3, v12, v2

    aput v3, v12, v3

    .line 1864
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v13

    .line 1865
    .local v13, "minHeight":I
    if-ltz v13, :cond_1

    sub-int v14, p5, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_1

    :cond_1
    move v14, v3

    .line 1867
    .local v14, "alignmentHeight":I
    :goto_1
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1868
    if-eqz v1, :cond_2

    .line 1869
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_2

    .line 1872
    :cond_2
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1877
    :cond_3
    :goto_2
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1878
    if-eqz v1, :cond_4

    .line 1879
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_3

    .line 1882
    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1887
    :cond_5
    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1888
    if-eqz v1, :cond_6

    .line 1889
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_4

    .line 1892
    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v11, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1897
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 1898
    .local v15, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    .line 1899
    .local v16, "contentInsetRight":I
    sub-int v2, v15, v10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v12, v3

    .line 1900
    sub-int v2, v4, v7

    sub-int/2addr v2, v11

    sub-int v2, v16, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v12, v17

    .line 1901
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1902
    .end local v10    # "left":I
    .local v2, "left":I
    sub-int v10, v4, v7

    sub-int v10, v10, v16

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1904
    .end local v11    # "right":I
    .local v10, "right":I
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1905
    if-eqz v1, :cond_8

    .line 1906
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_5

    .line 1909
    :cond_8
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v2, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 1914
    :cond_9
    :goto_5
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1915
    if-eqz v1, :cond_a

    .line 1916
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v10, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    .line 1919
    :cond_a
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v2, v12, v14}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 1924
    :cond_b
    :goto_6
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    .line 1925
    .local v11, "layoutTitle":Z
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    .line 1926
    .local v3, "layoutSubtitle":Z
    const/16 v19, 0x0

    .line 1927
    .local v19, "titleHeight":I
    if-eqz v11, :cond_c

    .line 1928
    move/from16 v20, v13

    .end local v13    # "minHeight":I
    .local v20, "minHeight":I
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1929
    .local v13, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v21, v15

    .end local v15    # "contentInsetLeft":I
    .local v21, "contentInsetLeft":I
    iget v15, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v22, v7

    .end local v7    # "paddingRight":I
    .local v22, "paddingRight":I
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v15, v7

    iget v7, v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v7

    add-int v19, v19, v15

    goto :goto_7

    .line 1927
    .end local v20    # "minHeight":I
    .end local v21    # "contentInsetLeft":I
    .end local v22    # "paddingRight":I
    .restart local v7    # "paddingRight":I
    .local v13, "minHeight":I
    .restart local v15    # "contentInsetLeft":I
    :cond_c
    move/from16 v22, v7

    move/from16 v20, v13

    move/from16 v21, v15

    .line 1931
    .end local v7    # "paddingRight":I
    .end local v13    # "minHeight":I
    .end local v15    # "contentInsetLeft":I
    .restart local v20    # "minHeight":I
    .restart local v21    # "contentInsetLeft":I
    .restart local v22    # "paddingRight":I
    :goto_7
    if-eqz v3, :cond_d

    .line 1932
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1933
    .local v7, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v13, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v13, v15

    iget v15, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v15

    add-int v19, v19, v13

    .line 1936
    .end local v7    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_d
    if-nez v11, :cond_f

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v27, v1

    move/from16 v25, v4

    move/from16 v29, v5

    move/from16 v26, v6

    move/from16 v31, v8

    move/from16 v28, v14

    goto/16 :goto_13

    .line 1938
    :cond_f
    :goto_8
    if-eqz v11, :cond_10

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_9

    :cond_10
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1939
    .local v7, "topChild":Landroid/view/View;
    :goto_9
    if-eqz v3, :cond_11

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_a

    :cond_11
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1940
    .local v13, "bottomChild":Landroid/view/View;
    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1941
    .local v15, "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move-object/from16 v24, v7

    .end local v7    # "topChild":Landroid/view/View;
    .local v24, "topChild":Landroid/view/View;
    move-object/from16 v7, v23

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1942
    .local v7, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    if-eqz v11, :cond_12

    move-object/from16 v23, v13

    .end local v13    # "bottomChild":Landroid/view/View;
    .local v23, "bottomChild":Landroid/view/View;
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-gtz v13, :cond_13

    goto :goto_b

    .end local v23    # "bottomChild":Landroid/view/View;
    .restart local v13    # "bottomChild":Landroid/view/View;
    :cond_12
    move-object/from16 v23, v13

    .end local v13    # "bottomChild":Landroid/view/View;
    .restart local v23    # "bottomChild":Landroid/view/View;
    :goto_b
    if-eqz v3, :cond_14

    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1943
    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    if-lez v13, :cond_14

    :cond_13
    const/4 v13, 0x1

    goto :goto_c

    :cond_14
    const/4 v13, 0x0

    .line 1945
    .local v13, "titleHasWidth":Z
    :goto_c
    move/from16 v25, v4

    .end local v4    # "width":I
    .local v25, "width":I
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 1951
    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .local v26, "paddingLeft":I
    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    .line 1952
    .local v4, "space":I
    sub-int v6, v4, v19

    div-int/lit8 v6, v6, 0x2

    .line 1953
    .local v6, "spaceAbove":I
    move/from16 v27, v4

    .end local v4    # "space":I
    .local v27, "space":I
    iget v4, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v28, v14

    .end local v14    # "alignmentHeight":I
    .local v28, "alignmentHeight":I
    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v4, v14

    if-ge v6, v4, :cond_15

    .line 1954
    iget v4, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int v6, v4, v14

    move/from16 v29, v5

    goto :goto_d

    .line 1966
    .end local v26    # "paddingLeft":I
    .end local v27    # "space":I
    .end local v28    # "alignmentHeight":I
    .local v6, "paddingLeft":I
    .restart local v14    # "alignmentHeight":I
    :sswitch_0
    sub-int v4, v5, v9

    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    iget v6, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v6

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v4, v6

    sub-int v4, v4, v19

    move/from16 v29, v5

    move/from16 v28, v14

    .local v4, "titleTop":I
    goto :goto_e

    .line 1947
    .end local v4    # "titleTop":I
    .end local v26    # "paddingLeft":I
    .restart local v6    # "paddingLeft":I
    :sswitch_1
    move/from16 v26, v6

    .end local v6    # "paddingLeft":I
    .restart local v26    # "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v4

    iget v6, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v4, v6

    .line 1948
    .restart local v4    # "titleTop":I
    move/from16 v29, v5

    move/from16 v28, v14

    goto :goto_e

    .line 1956
    .end local v4    # "titleTop":I
    .end local v14    # "alignmentHeight":I
    .local v6, "spaceAbove":I
    .restart local v27    # "space":I
    .restart local v28    # "alignmentHeight":I
    :cond_15
    sub-int v4, v5, v9

    sub-int v4, v4, v19

    sub-int/2addr v4, v6

    sub-int/2addr v4, v8

    .line 1958
    .local v4, "spaceBelow":I
    iget v14, v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v29, v5

    .end local v5    # "height":I
    .local v29, "height":I
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v14, v5

    if-ge v4, v14, :cond_16

    .line 1959
    iget v5, v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v4

    sub-int v5, v6, v5

    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1963
    .end local v4    # "spaceBelow":I
    :cond_16
    :goto_d
    add-int v4, v8, v6

    .line 1964
    .local v4, "titleTop":I
    nop

    .line 1970
    .end local v6    # "spaceAbove":I
    .end local v27    # "space":I
    :goto_e
    if-eqz v1, :cond_1b

    .line 1971
    if-eqz v13, :cond_17

    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    const/4 v6, 0x1

    aget v14, v12, v6

    sub-int/2addr v5, v14

    .line 1972
    .local v5, "rd":I
    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    sub-int v10, v10, v17

    .line 1973
    move/from16 v27, v1

    .end local v1    # "isRtl":Z
    .local v27, "isRtl":Z
    neg-int v1, v5

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v12, v6

    .line 1974
    move v1, v10

    .line 1975
    .local v1, "titleRight":I
    move v6, v10

    .line 1977
    .local v6, "subtitleRight":I
    if-eqz v11, :cond_18

    .line 1978
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1979
    .local v14, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move/from16 v18, v5

    .end local v5    # "rd":I
    .local v18, "rd":I
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    .line 1980
    .local v5, "titleLeft":I
    move-object/from16 v30, v7

    .end local v7    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .local v30, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 1981
    .local v7, "titleBottom":I
    move/from16 v31, v8

    .end local v8    # "paddingTop":I
    .local v31, "paddingTop":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4, v1, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 1982
    iget v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v1, v5, v8

    .line 1983
    iget v8, v14, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v8

    goto :goto_10

    .line 1977
    .end local v14    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v18    # "rd":I
    .end local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .local v5, "rd":I
    .local v7, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v8    # "paddingTop":I
    :cond_18
    move/from16 v18, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    .line 1985
    .end local v5    # "rd":I
    .end local v7    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .restart local v18    # "rd":I
    .restart local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    :goto_10
    if-eqz v3, :cond_19

    .line 1986
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1987
    .local v5, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v7, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v7

    .line 1988
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    .line 1989
    .local v7, "subtitleLeft":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 1990
    .local v8, "subtitleBottom":I
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v7, v4, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 1991
    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v6, v14

    .line 1992
    iget v14, v5, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v8, v14

    .line 1994
    .end local v5    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v7    # "subtitleLeft":I
    .end local v8    # "subtitleBottom":I
    :cond_19
    if-eqz v13, :cond_1a

    .line 1995
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v10, v5

    .line 1997
    .end local v1    # "titleRight":I
    .end local v6    # "subtitleRight":I
    .end local v18    # "rd":I
    :cond_1a
    goto/16 :goto_13

    .line 1998
    .end local v27    # "isRtl":Z
    .end local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v31    # "paddingTop":I
    .local v1, "isRtl":Z
    .local v7, "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .local v8, "paddingTop":I
    :cond_1b
    move/from16 v27, v1

    move-object/from16 v30, v7

    move/from16 v31, v8

    .end local v1    # "isRtl":Z
    .end local v7    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v8    # "paddingTop":I
    .restart local v27    # "isRtl":Z
    .restart local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v31    # "paddingTop":I
    if-eqz v13, :cond_1c

    iget v14, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_11

    :cond_1c
    const/4 v14, 0x0

    :goto_11
    const/4 v1, 0x0

    aget v5, v12, v1

    sub-int/2addr v14, v5

    .line 1999
    .local v14, "ld":I
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 2000
    neg-int v5, v14

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v12, v1

    .line 2001
    move v1, v2

    .line 2002
    .local v1, "titleLeft":I
    move v5, v2

    .line 2004
    .local v5, "subtitleLeft":I
    if-eqz v11, :cond_1d

    .line 2005
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2006
    .local v6, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    .line 2007
    .local v7, "titleRight":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    .line 2008
    .local v8, "titleBottom":I
    move/from16 v18, v2

    .end local v2    # "left":I
    .local v18, "left":I
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 2009
    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int v1, v7, v2

    .line 2010
    iget v2, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v8, v2

    goto :goto_12

    .line 2004
    .end local v6    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v7    # "titleRight":I
    .end local v8    # "titleBottom":I
    .end local v18    # "left":I
    .restart local v2    # "left":I
    :cond_1d
    move/from16 v18, v2

    .line 2012
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :goto_12
    if-eqz v3, :cond_1e

    .line 2013
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2014
    .local v2, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v6, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    .line 2015
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 2016
    .local v6, "subtitleRight":I
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 2017
    .local v7, "subtitleBottom":I
    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v4, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 2018
    iget v8, v0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int v5, v6, v8

    .line 2019
    iget v8, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v4, v7, v8

    .line 2021
    .end local v2    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v6    # "subtitleRight":I
    .end local v7    # "subtitleBottom":I
    :cond_1e
    if-eqz v13, :cond_1f

    .line 2022
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .end local v18    # "left":I
    .local v2, "left":I
    goto :goto_13

    .line 2021
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :cond_1f
    move/from16 v2, v18

    .line 2030
    .end local v1    # "titleLeft":I
    .end local v4    # "titleTop":I
    .end local v5    # "subtitleLeft":I
    .end local v13    # "titleHasWidth":Z
    .end local v14    # "ld":I
    .end local v15    # "toplp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v18    # "left":I
    .end local v23    # "bottomChild":Landroid/view/View;
    .end local v24    # "topChild":Landroid/view/View;
    .end local v30    # "bottomlp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v2    # "left":I
    :goto_13
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2031
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2032
    .local v1, "leftViewsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v1, :cond_20

    .line 2033
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v6, v28

    .end local v28    # "alignmentHeight":I
    .local v6, "alignmentHeight":I
    invoke-direct {v0, v5, v2, v12, v6}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v2

    .line 2032
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .end local v6    # "alignmentHeight":I
    .restart local v28    # "alignmentHeight":I
    :cond_20
    move/from16 v6, v28

    .line 2037
    .end local v4    # "i":I
    .end local v28    # "alignmentHeight":I
    .restart local v6    # "alignmentHeight":I
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2038
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2039
    .local v4, "rightViewsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_21

    .line 2040
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {v0, v7, v10, v12, v6}, Landroidx/appcompat/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    .line 2039
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 2046
    .end local v5    # "i":I
    :cond_21
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Landroidx/appcompat/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2047
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v5, v12}, Landroidx/appcompat/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v5

    .line 2048
    .local v5, "centerViewsWidth":I
    sub-int v7, v25, v26

    sub-int v7, v7, v22

    div-int/lit8 v7, v7, 0x2

    add-int v7, v26, v7

    .line 2049
    .local v7, "parentCenter":I
    div-int/lit8 v8, v5, 0x2

    .line 2050
    .local v8, "halfCenterViewsWidth":I
    sub-int v13, v7, v8

    .line 2051
    .local v13, "centerLeft":I
    add-int v14, v13, v5

    .line 2052
    .local v14, "centerRight":I
    if-ge v13, v2, :cond_22

    .line 2053
    move v13, v2

    goto :goto_16

    .line 2054
    :cond_22
    if-le v14, v10, :cond_23

    .line 2055
    sub-int v15, v14, v10

    sub-int/2addr v13, v15

    .line 2058
    :cond_23
    :goto_16
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2059
    .local v15, "centerViewsCount":I
    const/16 v17, 0x0

    move/from16 v32, v17

    move/from16 v17, v1

    move/from16 v1, v32

    .local v1, "i":I
    .local v17, "leftViewsCount":I
    :goto_17
    if-ge v1, v15, :cond_24

    .line 2060
    move/from16 v18, v2

    .end local v2    # "left":I
    .restart local v18    # "left":I
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v13, v12, v6}, Landroidx/appcompat/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    .line 2059
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v18

    goto :goto_17

    .line 2064
    .end local v1    # "i":I
    .end local v18    # "left":I
    .restart local v2    # "left":I
    :cond_24
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2065
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1716
    move-object/from16 v7, p0

    const/4 v8, 0x0

    .line 1717
    .local v8, "width":I
    const/4 v9, 0x0

    .line 1718
    .local v9, "height":I
    const/4 v10, 0x0

    .line 1720
    .local v10, "childState":I
    iget-object v11, v7, Landroidx/appcompat/widget/Toolbar;->mTempMargins:[I

    .line 1723
    .local v11, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    const/4 v0, 0x1

    .line 1725
    .local v0, "marginStartIndex":I
    const/4 v1, 0x0

    move v12, v0

    move v13, v1

    .local v1, "marginEndIndex":I
    goto :goto_0

    .line 1727
    .end local v0    # "marginStartIndex":I
    .end local v1    # "marginEndIndex":I
    :cond_0
    const/4 v0, 0x0

    .line 1728
    .restart local v0    # "marginStartIndex":I
    const/4 v1, 0x1

    move v12, v0

    move v13, v1

    .line 1733
    .end local v0    # "marginStartIndex":I
    .local v12, "marginStartIndex":I
    .local v13, "marginEndIndex":I
    :goto_0
    const/4 v14, 0x0

    .line 1734
    .local v14, "navWidth":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1737
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 1738
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1739
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1738
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1740
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1741
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1740
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1744
    :cond_1
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1745
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1747
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1748
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v14, v0, v1

    .line 1749
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1750
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1749
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1751
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1752
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v0

    .line 1751
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1755
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v15

    .line 1756
    .local v15, "contentInsetStart":I
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1757
    sub-int v0, v15, v14

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v12

    .line 1759
    const/16 v16, 0x0

    .line 1760
    .local v16, "menuWidth":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1761
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v4, v7, Landroidx/appcompat/widget/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v17, v4

    move/from16 v4, p2

    move/from16 v18, v12

    move v12, v6

    .end local v12    # "marginStartIndex":I
    .local v18, "marginStartIndex":I
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1763
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v16, v0, v1

    .line 1764
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1765
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1764
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1766
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 1767
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMeasuredState()I

    move-result v0

    .line 1766
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v6, v16

    goto :goto_1

    .line 1760
    .end local v18    # "marginStartIndex":I
    .restart local v12    # "marginStartIndex":I
    :cond_3
    move/from16 v18, v12

    move v12, v6

    .end local v12    # "marginStartIndex":I
    .restart local v18    # "marginStartIndex":I
    move/from16 v6, v16

    .line 1770
    .end local v16    # "menuWidth":I
    .local v6, "menuWidth":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v5

    .line 1771
    .local v5, "contentInsetEnd":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v8, v0

    .line 1772
    sub-int v0, v5, v6

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v11, v13

    .line 1774
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1775
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move/from16 v17, v5

    .end local v5    # "contentInsetEnd":I
    .local v17, "contentInsetEnd":I
    move/from16 v5, v16

    move/from16 v16, v6

    .end local v6    # "menuWidth":I
    .restart local v16    # "menuWidth":I
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1777
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1778
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1777
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1779
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1780
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 1779
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_2

    .line 1774
    .end local v16    # "menuWidth":I
    .end local v17    # "contentInsetEnd":I
    .restart local v5    # "contentInsetEnd":I
    .restart local v6    # "menuWidth":I
    :cond_4
    move/from16 v17, v5

    move/from16 v16, v6

    .line 1783
    .end local v5    # "contentInsetEnd":I
    .end local v6    # "menuWidth":I
    .restart local v16    # "menuWidth":I
    .restart local v17    # "contentInsetEnd":I
    :goto_2
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1784
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v8

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v8, v0

    .line 1786
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1787
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1786
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1788
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1789
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 1788
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    .line 1792
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v6

    .line 1793
    .local v6, "childCount":I
    const/4 v0, 0x0

    move v5, v10

    move v10, v9

    move v9, v8

    move v8, v0

    .local v5, "childState":I
    .local v8, "i":I
    .local v9, "width":I
    .local v10, "height":I
    :goto_3
    if-ge v8, v6, :cond_8

    .line 1794
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1795
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 1796
    .local v3, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v0, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_7

    invoke-direct {v7, v4}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1798
    move v12, v5

    move/from16 v19, v6

    goto :goto_4

    .line 1801
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move-object/from16 v20, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .local v20, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    move v3, v9

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    move/from16 v4, p2

    move v12, v5

    .end local v5    # "childState":I
    .local v12, "childState":I
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "childCount":I
    .local v19, "childCount":I
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v9, v0

    .line 1803
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v21

    .end local v21    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1804
    .end local v10    # "height":I
    .local v0, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v10, v0

    move v5, v2

    .end local v12    # "childState":I
    .local v2, "childState":I
    goto :goto_5

    .line 1796
    .end local v0    # "height":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v19    # "childCount":I
    .end local v20    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childState":I
    .restart local v6    # "childCount":I
    .restart local v10    # "height":I
    :cond_7
    move-object/from16 v20, v3

    move-object v1, v4

    move v12, v5

    move/from16 v19, v6

    .line 1793
    .end local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childState":I
    .end local v6    # "childCount":I
    .restart local v12    # "childState":I
    .restart local v19    # "childCount":I
    :goto_4
    move v5, v12

    .end local v12    # "childState":I
    .restart local v5    # "childState":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    const/4 v12, 0x0

    goto :goto_3

    .end local v19    # "childCount":I
    .restart local v6    # "childCount":I
    :cond_8
    move v12, v5

    move/from16 v19, v6

    .line 1807
    .end local v5    # "childState":I
    .end local v6    # "childCount":I
    .end local v8    # "i":I
    .restart local v12    # "childState":I
    .restart local v19    # "childCount":I
    const/4 v8, 0x0

    .line 1808
    .local v8, "titleWidth":I
    const/16 v20, 0x0

    .line 1809
    .local v20, "titleHeight":I
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    add-int v21, v0, v1

    .line 1810
    .local v21, "titleVertMargins":I
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    add-int v22, v0, v1

    .line 1811
    .local v22, "titleHorizMargins":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1812
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v9, v22

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v21

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    .line 1815
    .end local v8    # "titleWidth":I
    .local v0, "titleWidth":I
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v8, v1, v2

    .line 1816
    .end local v0    # "titleWidth":I
    .restart local v8    # "titleWidth":I
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int v20, v0, v1

    .line 1817
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    move v12, v5

    .line 1819
    :cond_9
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1820
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v9, v22

    add-int v5, v20, v21

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1824
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1825
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v20, v20, v0

    .line 1826
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1827
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 1826
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v0, v20

    goto :goto_6

    .line 1819
    :cond_a
    move/from16 v0, v20

    .line 1830
    .end local v20    # "titleHeight":I
    .local v0, "titleHeight":I
    :goto_6
    add-int/2addr v9, v8

    .line 1831
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1835
    .end local v10    # "height":I
    .local v1, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    .line 1836
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1838
    nop

    .line 1839
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v12

    .line 1838
    move/from16 v4, p1

    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 1841
    .local v2, "measuredWidth":I
    nop

    .line 1842
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v12, 0x10

    .line 1841
    move/from16 v6, p2

    invoke-static {v3, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1845
    .local v3, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->shouldCollapse()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    move v5, v3

    :goto_7
    invoke-virtual {v7, v2, v5}, Landroidx/appcompat/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1846
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1568
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 1569
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1570
    return-void

    .line 1573
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 1574
    .local v0, "ss":Landroidx/appcompat/widget/Toolbar$SavedState;
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1576
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1577
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v2, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1578
    iget v2, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1579
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_2

    .line 1580
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1584
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-boolean v2, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_3

    .line 1585
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->postShowOverflowMenu()V

    .line 1587
    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 502
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 505
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 506
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 507
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1556
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1558
    .local v0, "state":Landroidx/appcompat/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1559
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1562
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1563
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1608
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1609
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1612
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1613
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1614
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 1615
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1619
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1620
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->mEatingTouch:Z

    .line 1623
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .line 2259
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2261
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2262
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2263
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2264
    .local v3, "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v2, v4, :cond_0

    .line 2265
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->removeViewAt(I)V

    .line 2266
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/Toolbar$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2269
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setCollapseContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1066
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    .line 1067
    return-void
.end method

.method public setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1083
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1086
    :cond_1
    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1112
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1126
    if-eqz p1, :cond_0

    .line 1127
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1128
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1129
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1130
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1132
    :cond_1
    :goto_0
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .line 2291
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->mCollapsible:Z

    .line 2292
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 2293
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .line 1431
    if-gez p1, :cond_0

    .line 1432
    const/high16 p1, -0x80000000

    .line 1434
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1435
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1436
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1437
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1440
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .line 1388
    if-gez p1, :cond_0

    .line 1389
    const/high16 p1, -0x80000000

    .line 1391
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1392
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1393
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1394
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 1397
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1309
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 1310
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1311
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1244
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureContentInsets()V

    .line 1245
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mContentInsets:Landroidx/appcompat/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1246
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 520
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 639
    if-eqz p1, :cond_0

    .line 640
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 648
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 651
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 674
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 675
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureLogoView()V

    .line 689
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 692
    :cond_1
    return-void
.end method

.method public setMenu(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 565
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 566
    return-void

    .line 569
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenuView()V

    .line 570
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    .line 571
    .local v0, "oldMenu":Landroidx/appcompat/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_1

    .line 572
    return-void

    .line 575
    :cond_1
    if-eqz v0, :cond_2

    .line 576
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 577
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 580
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 581
    new-instance v1, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 584
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 585
    if-eqz p1, :cond_4

    .line 586
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 587
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 589
    :cond_4
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 590
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 591
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 592
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 594
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 595
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 596
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mOuterActionMenuPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 597
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2301
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2302
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 2303
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2304
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 2306
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 944
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 945
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 958
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 961
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 962
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 964
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 981
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 982
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 999
    if-eqz p1, :cond_0

    .line 1000
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 1001
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1002
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1006
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1008
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1009
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1036
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureNavButtonView()V

    .line 1037
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 1222
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 1223
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1155
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 1156
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 365
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 366
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mPopupTheme:I

    .line 367
    if-nez p1, :cond_0

    .line 368
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 370
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 373
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 817
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 818
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 828
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 829
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 830
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 831
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 832
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 833
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 834
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 835
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 837
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 838
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 841
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 842
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 846
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 849
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 852
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 870
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 871
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 874
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 903
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 904
    return-void
.end method

.method public setSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 912
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 913
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 916
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 761
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 762
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 775
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 776
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 777
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 778
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 779
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 780
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 782
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 783
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 786
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 787
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 791
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 793
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 794
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 797
    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 400
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 401
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 402
    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 403
    iput p4, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 405
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 406
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 495
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginBottom:I

    .line 496
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 497
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 472
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginEnd:I

    .line 474
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 475
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 426
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginStart:I

    .line 428
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 429
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 449
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleMarginTop:I

    .line 451
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    .line 452
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 859
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextAppearance:I

    .line 860
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 863
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 882
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 883
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 891
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 892
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 895
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 550
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
