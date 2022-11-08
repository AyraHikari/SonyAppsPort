.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;,
        Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;,
        Lcom/google/android/material/textfield/TextInputLayout$EndIconMode;,
        Lcom/google/android/material/textfield/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final DEF_STYLE_RES:I

.field public static final END_ICON_CLEAR_TEXT:I = 0x2

.field public static final END_ICON_CUSTOM:I = -0x1

.field public static final END_ICON_DROPDOWN_MENU:I = 0x3

.field public static final END_ICON_NONE:I = 0x0

.field public static final END_ICON_PASSWORD_TOGGLE:I = 0x1

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"

.field private static final NO_WIDTH:I = -0x1

.field private static final PLACEHOLDER_FADE_DURATION:J = 0x57L

.field private static final PLACEHOLDER_START_DELAY:J = 0x43L


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private areCornerRadiiRtl:Z

.field private boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private boxBackgroundColor:I

.field private boxBackgroundMode:I

.field private boxCollapsedPaddingTopPx:I

.field private final boxLabelCutoutPaddingPx:I

.field private boxStrokeColor:I

.field private boxStrokeWidthDefaultPx:I

.field private boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field private boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field final collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private counterOverflowTextAppearance:I

.field private counterOverflowTextColor:Landroid/content/res/ColorStateList;

.field private counterOverflowed:Z

.field private counterTextAppearance:I

.field private counterTextColor:Landroid/content/res/ColorStateList;

.field private counterView:Landroid/widget/TextView;

.field private defaultFilledBackgroundColor:I

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private defaultStrokeColor:I

.field private disabledColor:I

.field private disabledFilledBackgroundColor:I

.field editText:Landroid/widget/EditText;

.field private final editTextAttachedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;",
            ">;"
        }
    .end annotation
.end field

.field private endDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private endDummyDrawableWidth:I

.field private final endIconChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final endIconDelegates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/textfield/EndIconDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final endIconFrame:Landroid/widget/FrameLayout;

.field private endIconMode:I

.field private endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private endIconTintList:Landroid/content/res/ColorStateList;

.field private endIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final endIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field private final endLayout:Landroid/widget/LinearLayout;

.field private errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private errorIconTintList:Landroid/content/res/ColorStateList;

.field private errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field private expandedHintEnabled:Z

.field private focusedFilledBackgroundColor:I

.field private focusedStrokeColor:I

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private hoveredFilledBackgroundColor:I

.field private hoveredStrokeColor:I

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private isProvidingHint:Z

.field private maxEms:I

.field private maxWidth:I

.field private minEms:I

.field private minWidth:I

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private placeholderEnabled:Z

.field private placeholderFadeIn:Landroidx/transition/Fade;

.field private placeholderFadeOut:Landroidx/transition/Fade;

.field private placeholderText:Ljava/lang/CharSequence;

.field private placeholderTextAppearance:I

.field private placeholderTextColor:Landroid/content/res/ColorStateList;

.field private placeholderTextView:Landroid/widget/TextView;

.field private prefixText:Ljava/lang/CharSequence;

.field private final prefixTextView:Landroid/widget/TextView;

.field private restoringSavedState:Z

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private startDummyDrawableWidth:I

.field private startIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private startIconTintList:Landroid/content/res/ColorStateList;

.field private startIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final startIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field private final startLayout:Landroid/widget/LinearLayout;

.field private strokeErrorColor:Landroid/content/res/ColorStateList;

.field private suffixText:Ljava/lang/CharSequence;

.field private final suffixTextView:Landroid/widget/TextView;

.field private final tmpBoundsRect:Landroid/graphics/Rect;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TextInputLayout:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 436
    sget v0, Lcom/google/android/material/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 437
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 42
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 440
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lcom/google/android/material/textfield/TextInputLayout;->DEF_STYLE_RES:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    const/4 v10, -0x1

    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    .line 205
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    .line 206
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    .line 207
    iput v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    .line 209
    new-instance v2, Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-direct {v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 271
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 272
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpBoundsRect:Landroid/graphics/Rect;

    .line 273
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 384
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    .line 387
    const/4 v11, 0x0

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    .line 388
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconDelegates:Landroid/util/SparseArray;

    .line 390
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    .line 421
    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 444
    .end local p1    # "context":Landroid/content/Context;
    .local v13, "context":Landroid/content/Context;
    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    .line 445
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    .line 446
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 448
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 449
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconFrame:Landroid/widget/FrameLayout;

    .line 451
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Landroid/widget/LinearLayout;

    .line 452
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Landroid/widget/LinearLayout;

    .line 454
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v3, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    .line 455
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    .line 457
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 460
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 464
    .local v10, "layoutInflater":Landroid/view/LayoutInflater;
    sget v14, Lcom/google/android/material/R$layout;->design_text_input_start_icon:I

    .line 466
    invoke-virtual {v10, v14, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v14, v0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 467
    move-object/from16 v17, v1

    sget v1, Lcom/google/android/material/R$layout;->design_text_input_end_icon:I

    .line 469
    invoke-virtual {v10, v1, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 470
    move-object/from16 v18, v1

    sget v1, Lcom/google/android/material/R$layout;->design_text_input_end_icon:I

    .line 472
    invoke-virtual {v10, v1, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 474
    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 476
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 477
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v19, v10

    .end local v10    # "layoutInflater":Landroid/view/LayoutInflater;
    .local v19, "layoutInflater":Landroid/view/LayoutInflater;
    const/4 v10, -0x2

    move-object/from16 v20, v1

    const v1, 0x800003

    move-object/from16 v21, v3

    const/4 v3, -0x1

    invoke-direct {v11, v10, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 483
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v11, 0x800005

    invoke-direct {v1, v10, v3, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 493
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    const v1, 0x800033

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 496
    sget-object v3, Lcom/google/android/material/R$styleable;->TextInputLayout:[I

    const/4 v1, 0x5

    new-array v11, v1, [I

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/4 v2, 0x0

    aput v1, v11, v2

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    const/4 v2, 0x1

    aput v1, v11, v2

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    const/4 v2, 0x2

    aput v1, v11, v2

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    const/4 v10, 0x3

    aput v1, v11, v10

    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/16 v22, 0x4

    aput v1, v11, v22

    .line 497
    move-object/from16 v23, v17

    move-object/from16 v10, v18

    move-object v1, v13

    move-object/from16 v18, v15

    move v15, v2

    move-object/from16 v2, p2

    move-object/from16 v24, v21

    move-object/from16 v25, v4

    move/from16 v4, p3

    move-object/from16 v26, v5

    move v5, v9

    move-object/from16 v27, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 509
    .local v1, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintEnabled:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    .line 510
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 511
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    .line 512
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_expandedHintEnabled:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    .line 514
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minEms:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minEms:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    goto :goto_0

    .line 516
    :cond_0
    const/4 v3, -0x1

    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_minWidth:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 519
    :cond_1
    :goto_0
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxEms:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxEms:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    goto :goto_1

    .line 521
    :cond_2
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_maxWidth:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 525
    :cond_3
    :goto_1
    nop

    .line 526
    invoke-static {v13, v7, v8, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 528
    nop

    .line 530
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 531
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 532
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 533
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 535
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidth:I

    .line 539
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 540
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 536
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 541
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeWidthFocused:I

    .line 545
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 546
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 542
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 547
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 549
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    .line 550
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v2

    .line 551
    .local v2, "boxCornerRadiusTopStart":F
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    .line 552
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v4

    .line 553
    .local v4, "boxCornerRadiusTopEnd":F
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 554
    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v5

    .line 555
    .local v5, "boxCornerRadiusBottomEnd":F
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 556
    invoke-virtual {v1, v6, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result v3

    .line 557
    .local v3, "boxCornerRadiusBottomStart":F
    iget-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v6

    .line 558
    .local v6, "shapeBuilder":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    const/4 v9, 0x0

    cmpl-float v11, v2, v9

    if-ltz v11, :cond_4

    .line 559
    invoke-virtual {v6, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 561
    :cond_4
    cmpl-float v11, v4, v9

    if-ltz v11, :cond_5

    .line 562
    invoke-virtual {v6, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 564
    :cond_5
    cmpl-float v11, v5, v9

    if-ltz v11, :cond_6

    .line 565
    invoke-virtual {v6, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 567
    :cond_6
    cmpl-float v9, v3, v9

    if-ltz v9, :cond_7

    .line 568
    invoke-virtual {v6, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 570
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 572
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 573
    invoke-static {v13, v1, v9}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 575
    .local v9, "filledBackgroundColorStateList":Landroid/content/res/ColorStateList;
    if-eqz v9, :cond_9

    .line 576
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    .line 577
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 578
    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v11

    const v21, -0x101009e

    if-eqz v11, :cond_8

    .line 579
    const/4 v11, 0x1

    new-array v15, v11, [I

    const/4 v11, 0x0

    aput v21, v15, v11

    .line 580
    const/4 v11, -0x1

    invoke-virtual {v9, v15, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    iput v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    .line 582
    const/4 v15, 0x2

    new-array v11, v15, [I

    fill-array-data v11, :array_0

    .line 583
    const/4 v15, -0x1

    invoke-virtual {v9, v11, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v11

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    .line 585
    const/4 v11, 0x2

    new-array v15, v11, [I

    fill-array-data v15, :array_1

    .line 586
    const/4 v11, -0x1

    invoke-virtual {v9, v15, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    iput v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    move/from16 v28, v2

    move/from16 v21, v3

    goto :goto_2

    .line 589
    :cond_8
    iget v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    .line 590
    sget v11, Lcom/google/android/material/R$color;->mtrl_filled_background_color:I

    .line 591
    invoke-static {v13, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 592
    .local v11, "mtrlFilledBackgroundColorStateList":Landroid/content/res/ColorStateList;
    move/from16 v28, v2

    const/4 v15, 0x1

    .end local v2    # "boxCornerRadiusTopStart":F
    .local v28, "boxCornerRadiusTopStart":F
    new-array v2, v15, [I

    const/4 v15, 0x0

    aput v21, v2, v15

    .line 593
    const/4 v15, -0x1

    invoke-virtual {v11, v2, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    .line 595
    const/4 v2, 0x1

    new-array v15, v2, [I

    const v2, 0x1010367

    move/from16 v21, v3

    const/4 v3, 0x0

    .end local v3    # "boxCornerRadiusBottomStart":F
    .local v21, "boxCornerRadiusBottomStart":F
    aput v2, v15, v3

    .line 596
    const/4 v2, -0x1

    invoke-virtual {v11, v15, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v15

    iput v15, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    .line 598
    .end local v11    # "mtrlFilledBackgroundColorStateList":Landroid/content/res/ColorStateList;
    goto :goto_2

    .line 600
    .end local v21    # "boxCornerRadiusBottomStart":F
    .end local v28    # "boxCornerRadiusTopStart":F
    .restart local v2    # "boxCornerRadiusTopStart":F
    .restart local v3    # "boxCornerRadiusBottomStart":F
    :cond_9
    move/from16 v28, v2

    move/from16 v21, v3

    const/4 v3, 0x0

    .end local v2    # "boxCornerRadiusTopStart":F
    .end local v3    # "boxCornerRadiusBottomStart":F
    .restart local v21    # "boxCornerRadiusBottomStart":F
    .restart local v28    # "boxCornerRadiusTopStart":F
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 601
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    .line 602
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    .line 603
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    .line 604
    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    .line 607
    :goto_2
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 608
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 609
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 612
    :cond_a
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    .line 613
    invoke-static {v13, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 615
    .local v2, "boxStrokeColorStateList":Landroid/content/res/ColorStateList;
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeColor:I

    const/4 v11, 0x0

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 616
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 617
    invoke-static {v13, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    .line 618
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_disabled_color:I

    invoke-static {v13, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    .line 619
    sget v3, Lcom/google/android/material/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 620
    invoke-static {v13, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    .line 622
    if-eqz v2, :cond_b

    .line 623
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 625
    :cond_b
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 626
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_boxStrokeErrorColor:I

    .line 627
    invoke-static {v13, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 626
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    .line 631
    :cond_c
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v11, -0x1

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 632
    .local v3, "hintAppearance":I
    if-eq v3, v11, :cond_d

    .line 633
    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    goto :goto_3

    .line 632
    :cond_d
    const/4 v15, 0x0

    .line 636
    :goto_3
    sget v11, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextAppearance:I

    .line 637
    invoke-virtual {v1, v11, v15}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    .line 638
    .local v11, "errorTextAppearance":I
    sget v15, Lcom/google/android/material/R$styleable;->TextInputLayout_errorContentDescription:I

    .line 639
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 640
    .local v15, "errorContentDescription":Ljava/lang/CharSequence;
    move-object/from16 v29, v2

    .end local v2    # "boxStrokeColorStateList":Landroid/content/res/ColorStateList;
    .local v29, "boxStrokeColorStateList":Landroid/content/res/ColorStateList;
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_errorEnabled:I

    move/from16 v30, v3

    const/4 v3, 0x0

    .end local v3    # "hintAppearance":I
    .local v30, "hintAppearance":I
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 643
    .local v2, "errorEnabled":Z
    sget v3, Lcom/google/android/material/R$id;->text_input_error_icon:I

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setId(I)V

    .line 644
    invoke-static {v13}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 645
    nop

    .line 646
    invoke-virtual {v10}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 647
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "boxCornerRadiusTopEnd":F
    .local v31, "boxCornerRadiusTopEnd":F
    invoke-static {v3, v4}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_4

    .line 644
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v31    # "boxCornerRadiusTopEnd":F
    .restart local v4    # "boxCornerRadiusTopEnd":F
    :cond_e
    move/from16 v31, v4

    .line 649
    .end local v4    # "boxCornerRadiusTopEnd":F
    .restart local v31    # "boxCornerRadiusTopEnd":F
    :goto_4
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 650
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    .line 651
    invoke-static {v13, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    .line 654
    :cond_f
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 655
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    .line 657
    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 656
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 659
    :cond_10
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 660
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    :cond_11
    nop

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->error_icon_content_description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 662
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 664
    const/4 v3, 0x2

    invoke-static {v10, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 666
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 667
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 668
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 670
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    .line 671
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 672
    .local v4, "helperTextTextAppearance":I
    move/from16 v32, v5

    .end local v5    # "boxCornerRadiusBottomEnd":F
    .local v32, "boxCornerRadiusBottomEnd":F
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 673
    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 674
    .local v5, "helperTextEnabled":Z
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 676
    .local v3, "helperText":Ljava/lang/CharSequence;
    move-object/from16 v33, v6

    .end local v6    # "shapeBuilder":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .local v33, "shapeBuilder":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    sget v6, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextAppearance:I

    .line 677
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    .line 678
    .local v6, "placeholderTextAppearance":I
    sget v7, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderText:I

    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 680
    .local v7, "placeholderText":Ljava/lang/CharSequence;
    sget v8, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextAppearance:I

    .line 681
    move-object/from16 v34, v9

    const/4 v9, 0x0

    .end local v9    # "filledBackgroundColorStateList":Landroid/content/res/ColorStateList;
    .local v34, "filledBackgroundColorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 682
    .local v8, "prefixTextAppearance":I
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixText:I

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 684
    .local v9, "prefixText":Ljava/lang/CharSequence;
    move-object/from16 v35, v9

    .end local v9    # "prefixText":Ljava/lang/CharSequence;
    .local v35, "prefixText":Ljava/lang/CharSequence;
    sget v9, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextAppearance:I

    .line 685
    move-object/from16 v36, v3

    const/4 v3, 0x0

    .end local v3    # "helperText":Ljava/lang/CharSequence;
    .local v36, "helperText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v9, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 686
    .local v9, "suffixTextAppearance":I
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixText:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 688
    .local v3, "suffixText":Ljava/lang/CharSequence;
    move-object/from16 v37, v3

    .end local v3    # "suffixText":Ljava/lang/CharSequence;
    .local v37, "suffixText":Ljava/lang/CharSequence;
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_counterEnabled:I

    move/from16 v38, v2

    const/4 v2, 0x0

    .end local v2    # "errorEnabled":Z
    .local v38, "errorEnabled":Z
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 689
    .local v3, "counterEnabled":Z
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterMaxLength:I

    move/from16 v39, v3

    const/4 v3, -0x1

    .end local v3    # "counterEnabled":Z
    .local v39, "counterEnabled":Z
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 690
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    .line 691
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    .line 692
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    .line 695
    invoke-static {v13}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 696
    nop

    .line 697
    invoke-virtual {v14}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 698
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v2, v3}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 700
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 703
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 704
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    .line 705
    invoke-static {v13, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    .line 709
    :cond_13
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 710
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    .line 712
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 711
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 715
    :cond_14
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 716
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 718
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    .line 719
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 718
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 721
    :cond_15
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconCheckable:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V

    .line 724
    :cond_16
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_boxBackgroundMode:I

    .line 725
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 724
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 728
    invoke-static {v13}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 729
    nop

    .line 730
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 731
    .restart local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v2, v3}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 733
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_17
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 734
    .local v2, "endIconDrawableId":I
    new-instance v3, Lcom/google/android/material/textfield/CustomEndIconDelegate;

    invoke-direct {v3, v0, v2}, Lcom/google/android/material/textfield/CustomEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    move/from16 v40, v5

    const/4 v5, -0x1

    .end local v5    # "helperTextEnabled":Z
    .local v40, "helperTextEnabled":Z
    invoke-virtual {v12, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 735
    new-instance v3, Lcom/google/android/material/textfield/NoEndIconDelegate;

    invoke-direct {v3, v0}, Lcom/google/android/material/textfield/NoEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 736
    new-instance v3, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 740
    if-nez v2, :cond_18

    .line 741
    move-object/from16 v41, v10

    sget v10, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v1, v10, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_5

    .line 742
    :cond_18
    move-object/from16 v41, v10

    move v10, v2

    :goto_5
    invoke-direct {v3, v0, v10}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 736
    const/4 v5, 0x1

    invoke-virtual {v12, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 743
    new-instance v3, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {v3, v0, v2}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v5, 0x2

    invoke-virtual {v12, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 745
    new-instance v3, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {v3, v0, v2}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;I)V

    const/4 v5, 0x3

    invoke-virtual {v12, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 748
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 750
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 751
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    .line 752
    invoke-static {v13, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 756
    :cond_19
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 757
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    .line 759
    const/4 v5, -0x1

    invoke-virtual {v1, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 758
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 762
    :cond_1a
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 764
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 765
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 766
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    .line 767
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 766
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 769
    :cond_1b
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconCheckable:I

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    goto :goto_6

    .line 770
    :cond_1c
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 772
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 773
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    .line 774
    invoke-static {v13, v1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 777
    :cond_1d
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 778
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    .line 780
    const/4 v5, -0x1

    invoke-virtual {v1, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 779
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 782
    :cond_1e
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    .line 783
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 784
    .local v3, "passwordToggleEnabled":Z
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 785
    sget v5, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 786
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 785
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 790
    .end local v3    # "passwordToggleEnabled":Z
    :cond_1f
    :goto_6
    sget v3, Lcom/google/android/material/R$id;->textinput_prefix_text:I

    move-object/from16 v5, v24

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setId(I)V

    .line 791
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v3, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    const/4 v3, 0x1

    invoke-static {v5, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 798
    sget v12, Lcom/google/android/material/R$id;->textinput_suffix_text:I

    move-object/from16 v3, v23

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setId(I)V

    .line 799
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v16, v2

    .end local v2    # "endIconDrawableId":I
    .local v16, "endIconDrawableId":I
    const/16 v2, 0x50

    invoke-direct {v12, v10, v10, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    const/4 v2, 0x1

    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 807
    invoke-virtual {v0, v15}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 809
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 810
    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 811
    invoke-virtual {v0, v11}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 812
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 813
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 814
    invoke-virtual {v0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 815
    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextAppearance(I)V

    .line 816
    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextAppearance(I)V

    .line 818
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 819
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_errorTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 821
    :cond_20
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 822
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 824
    :cond_21
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 825
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_hintTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 827
    :cond_22
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 828
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 830
    :cond_23
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 831
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_counterOverflowTextColor:I

    .line 832
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 831
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 834
    :cond_24
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 835
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_placeholderTextColor:I

    .line 836
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 835
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 838
    :cond_25
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 839
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V

    .line 841
    :cond_26
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 842
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    .line 845
    :cond_27
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_android_enabled:I

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v10}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 847
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 851
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 855
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v2, v12, :cond_28

    .line 856
    invoke-static {v0, v10}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    .line 859
    :cond_28
    move-object/from16 v2, v26

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 860
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 862
    move-object/from16 v10, v20

    move-object/from16 v5, v27

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 864
    move-object/from16 v10, v25

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 865
    move-object/from16 v3, v41

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 868
    move-object/from16 v3, v18

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 869
    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 871
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 873
    move/from16 v2, v40

    .end local v40    # "helperTextEnabled":Z
    .local v2, "helperTextEnabled":Z
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 874
    move/from16 v3, v38

    .end local v38    # "errorEnabled":Z
    .local v3, "errorEnabled":Z
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 875
    move/from16 v5, v39

    .end local v39    # "counterEnabled":Z
    .local v5, "counterEnabled":Z
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 877
    move-object/from16 v10, v36

    .end local v36    # "helperText":Ljava/lang/CharSequence;
    .local v10, "helperText":Ljava/lang/CharSequence;
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 878
    move-object/from16 v12, v35

    .end local v35    # "prefixText":Ljava/lang/CharSequence;
    .local v12, "prefixText":Ljava/lang/CharSequence;
    invoke-virtual {v0, v12}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    .line 879
    move-object/from16 v14, v37

    .end local v37    # "suffixText":Ljava/lang/CharSequence;
    .local v14, "suffixText":Ljava/lang/CharSequence;
    invoke-virtual {v0, v14}, Lcom/google/android/material/textfield/TextInputLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    .line 880
    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/textfield/IndicatorViewController;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    return-object v0
.end method

.method private addPlaceholderTextView()V
    .locals 2

    .line 2454
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2456
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2458
    :cond_0
    return-void
.end method

.method private adjustFilledEditTextPaddingForLargeFont()V
    .locals 6

    .line 1017
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast2_0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1024
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_top:I

    .line 1026
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1027
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 1028
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_2_0_padding_bottom:I

    .line 1029
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1022
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_0

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1033
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 1034
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_top:I

    .line 1035
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1036
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 1037
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->material_filled_edittext_font_1_3_padding_bottom:I

    .line 1038
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1031
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1040
    :cond_2
    :goto_0
    return-void

    .line 1018
    :cond_3
    :goto_1
    return-void
.end method

.method private applyBoxAttributes()V
    .locals 3

    .line 2897
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-nez v0, :cond_0

    .line 2898
    return-void

    .line 2901
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eq v0, v1, :cond_1

    .line 2902
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 2905
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDropdownMenuBackground()V

    .line 2908
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->canDrawOutlineStroke()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2909
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 2912
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateBoxBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 2913
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 2914
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2916
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2918
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxUnderlineAttributes()V

    .line 2919
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 2920
    return-void
.end method

.method private applyBoxUnderlineAttributes()V
    .locals 2

    .line 2924
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2928
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->canDrawStroke()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2931
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 2932
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2933
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 2934
    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 2931
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 2935
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 2937
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 2938
    return-void

    .line 2925
    :cond_3
    :goto_1
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .line 4333
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 4334
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 4335
    return-void
.end method

.method private applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p2, "iconTintList"    # Landroid/content/res/ColorStateList;
    .param p3, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 4145
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4146
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 4147
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4148
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4150
    nop

    .line 4151
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->mergeIconState(Lcom/google/android/material/internal/CheckableImageButton;)[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 4152
    .local v1, "color":I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4153
    .end local v1    # "color":I
    goto :goto_0

    .line 4154
    :cond_0
    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4156
    :goto_0
    if-eqz p3, :cond_1

    .line 4157
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 4161
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 4162
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4164
    :cond_2
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 3

    .line 960
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 981
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Lcom/google/android/material/textfield/CutoutDrawable;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v2}, Lcom/google/android/material/textfield/CutoutDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    goto :goto_0

    .line 970
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 972
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 973
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 974
    goto :goto_1

    .line 962
    :pswitch_1
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 963
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 964
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 965
    goto :goto_1

    .line 976
    :pswitch_2
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 977
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 978
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 979
    nop

    .line 984
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateBoxBackgroundColor()I
    .locals 3

    .line 2888
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 2889
    .local v0, "backgroundColor":I
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2890
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;II)I

    move-result v1

    .line 2891
    .local v1, "surfaceLayerColor":I
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v0

    .line 2893
    .end local v1    # "surfaceLayerColor":I
    :cond_0
    return v0
.end method

.method private calculateCollapsedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2795
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2798
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpBoundsRect:Landroid/graphics/Rect;

    .line 2799
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 2801
    .local v1, "isRtl":Z
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2802
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v2, :pswitch_data_0

    .line 2815
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelLeftBoundAlightWithPrefix(IZ)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2816
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2817
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelRightBoundAlignedWithSuffix(IZ)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2818
    return-object v0

    .line 2804
    :pswitch_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2805
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2806
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2807
    return-object v0

    .line 2809
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelLeftBoundAlightWithPrefix(IZ)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2810
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2811
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getLabelRightBoundAlignedWithSuffix(IZ)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2812
    return-object v0

    .line 2796
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "isRtl":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateExpandedLabelBottom(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "labelHeight"    # F

    .line 2867
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isSingleLineFilledTextField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2871
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    return v0

    .line 2873
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateExpandedLabelTop(Landroid/graphics/Rect;F)I
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "labelHeight"    # F

    .line 2859
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isSingleLineFilledTextField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2860
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 2862
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateExpandedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2842
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2846
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpBoundsRect:Landroid/graphics/Rect;

    .line 2848
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpandedTextHeight()F

    move-result v1

    .line 2850
    .local v1, "labelHeight":F
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2851
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->calculateExpandedLabelTop(Landroid/graphics/Rect;F)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2852
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2853
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->calculateExpandedLabelBottom(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2855
    return-object v0

    .line 2843
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "labelHeight":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private calculateLabelMarginTop()I
    .locals 2

    .line 2778
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2779
    return v1

    .line 2782
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    packed-switch v0, :pswitch_data_0

    .line 2789
    :pswitch_0
    return v1

    .line 2784
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 2786
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    float-to-int v0, v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canDrawOutlineStroke()Z
    .locals 2

    .line 2941
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->canDrawStroke()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canDrawStroke()Z
    .locals 2

    .line 2945
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private closeCutout()V
    .locals 1

    .line 4327
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4328
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->removeCutout()V

    .line 4330
    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 4280
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4281
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4283
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 4284
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 4286
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 4288
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    .line 4289
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4290
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 4292
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText()V

    .line 4294
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePrefixTextVisibility()V

    .line 4295
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextVisibility()V

    .line 4296
    return-void
.end method

.method private createPlaceholderFadeTransition()Landroidx/transition/Fade;
    .locals 3

    .line 2415
    new-instance v0, Landroidx/transition/Fade;

    invoke-direct {v0}, Landroidx/transition/Fade;-><init>()V

    .line 2416
    .local v0, "placeholderFadeTransition":Landroidx/transition/Fade;
    const-wide/16 v1, 0x57

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Fade;->setDuration(J)Landroidx/transition/Transition;

    .line 2417
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroidx/transition/Fade;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 2418
    return-object v0
.end method

.method private cutoutEnabled()Z
    .locals 1

    .line 4299
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    instance-of v0, v0, Lcom/google/android/material/textfield/CutoutDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dispatchOnEditTextAttached()V
    .locals 2

    .line 4009
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 4010
    .local v1, "listener":Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;
    invoke-interface {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;->onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 4011
    .end local v1    # "listener":Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;
    goto :goto_0

    .line 4012
    :cond_0
    return-void
.end method

.method private dispatchOnEndIconChanged(I)V
    .locals 2
    .param p1, "previousIcon"    # I

    .line 4019
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 4020
    .local v1, "listener":Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;
    invoke-interface {v1, p0, p1}, Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;->onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 4021
    .end local v1    # "listener":Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;
    goto :goto_0

    .line 4022
    :cond_0
    return-void
.end method

.method private drawBoxUnderline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4255
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 4258
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4260
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4261
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4262
    .local v0, "focusedUnderlineBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4266
    .local v1, "defaultUnderlineBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v2

    .line 4267
    .local v2, "hintExpansionFraction":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 4269
    .local v3, "midpointX":I
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 4270
    invoke-static {v3, v4, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 4271
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 4272
    invoke-static {v3, v4, v2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 4274
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4277
    .end local v0    # "focusedUnderlineBounds":Landroid/graphics/Rect;
    .end local v1    # "defaultUnderlineBounds":Landroid/graphics/Rect;
    .end local v2    # "hintExpansionFraction":F
    .end local v3    # "midpointX":I
    :cond_0
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4249
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 4250
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 4252
    :cond_0
    return-void
.end method

.method private expandHint(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 4515
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4516
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4518
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1

    .line 4519
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 4521
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 4523
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4524
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->closeCutout()V

    .line 4526
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    .line 4527
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hidePlaceholderText()V

    .line 4529
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePrefixTextVisibility()V

    .line 4530
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextVisibility()V

    .line 4531
    return-void
.end method

.method private getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;
    .locals 3

    .line 4004
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconDelegates:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/EndIconDelegate;

    .line 4005
    .local v0, "endIconDelegate":Lcom/google/android/material/textfield/EndIconDelegate;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconDelegates:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/EndIconDelegate;

    :goto_0
    return-object v1
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 4132
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4133
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    .line 4134
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasEndIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4135
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0

    .line 4137
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLabelLeftBoundAlightWithPrefix(IZ)I
    .locals 3
    .param p1, "rectLeft"    # I
    .param p2, "isRtl"    # Z

    .line 2823
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 2824
    .local v0, "left":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 2826
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    add-int v0, v1, v2

    .line 2828
    :cond_0
    return v0
.end method

.method private getLabelRightBoundAlignedWithSuffix(IZ)I
    .locals 3
    .param p1, "rectRight"    # I
    .param p2, "isRtl"    # Z

    .line 2832
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    .line 2833
    .local v0, "right":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2837
    :cond_0
    return v0
.end method

.method private hasEndIcon()Z
    .locals 1

    .line 4015
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hidePlaceholderText()V
    .locals 2

    .line 2446
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-eqz v1, :cond_0

    .line 2447
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2448
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeOut:Landroidx/transition/Fade;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 2449
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2451
    :cond_0
    return-void
.end method

.method private isErrorIconVisible()Z
    .locals 1

    .line 4484
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSingleLineFilledTextField()Z
    .locals 3

    .line 2877
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 2878
    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    if-gt v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2877
    :goto_0
    return v1
.end method

.method private mergeIconState(Lcom/google/android/material/internal/CheckableImageButton;)[I
    .locals 6
    .param p1, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;

    .line 4503
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v0

    .line 4504
    .local v0, "textInputStates":[I
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawableState()[I

    move-result-object v1

    .line 4506
    .local v1, "iconStates":[I
    array-length v2, v0

    .line 4507
    .local v2, "index":I
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 4509
    .local v3, "states":[I
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4511
    return-object v3
.end method

.method private onApplyBoxBackgroundMode()V
    .locals 1

    .line 949
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 950
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->setEditTextBoxBackground()V

    .line 951
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 952
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateBoxCollapsedPaddingTop()V

    .line 953
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->adjustFilledEditTextPaddingForLargeFont()V

    .line 954
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 957
    :cond_0
    return-void
.end method

.method private openCutout()V
    .locals 5

    .line 4303
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4304
    return-void

    .line 4306
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 4307
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 4308
    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    move-result v3

    .line 4307
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V

    .line 4309
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 4314
    nop

    .line 4315
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 4314
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 4316
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    check-cast v1, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 4317
    return-void
.end method

.method private recalculateCutout()V
    .locals 1

    .line 4320
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_0

    .line 4321
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->closeCutout()V

    .line 4322
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 4324
    :cond_0
    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .line 2708
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2709
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2710
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2711
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 2712
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 2708
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2715
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    return-void
.end method

.method private refreshIconDrawableState(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 4489
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4490
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4494
    :cond_0
    nop

    .line 4495
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->mergeIconState(Lcom/google/android/material/internal/CheckableImageButton;)[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 4497
    .local v1, "color":I
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4498
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 4499
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4500
    return-void

    .line 4491
    .end local v1    # "color":I
    :cond_1
    :goto_0
    return-void
.end method

.method private removePlaceholderTextView()V
    .locals 2

    .line 2461
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2462
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2464
    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 1461
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_9

    .line 1465
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    .line 1466
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1473
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1474
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinEms(I)V

    goto :goto_0

    .line 1476
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 1478
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    if-eq v0, v1, :cond_2

    .line 1479
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxEms(I)V

    goto :goto_1

    .line 1481
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 1483
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 1484
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 1487
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 1488
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 1489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1490
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLetterSpacing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedLetterSpacing(F)V

    .line 1493
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 1494
    .local v0, "editTextGravity":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 1496
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 1499
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1520
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_4

    .line 1521
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 1525
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 1526
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1528
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 1529
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1533
    :cond_5
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1536
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 1537
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 1539
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 1541
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 1543
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 1544
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 1545
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1546
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->bringToFront()V

    .line 1547
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->dispatchOnEditTextAttached()V

    .line 1548
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePrefixTextViewPadding()V

    .line 1549
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextViewPadding()V

    .line 1553
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    .line 1554
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1558
    :cond_8
    invoke-direct {p0, v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 1559
    return-void

    .line 1462
    .end local v0    # "editTextGravity":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setEditTextBoxBackground()V
    .locals 2

    .line 988
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldUseEditTextBackgroundForBoxBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 991
    :cond_0
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 1793
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 1795
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_0

    .line 1798
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 1801
    :cond_0
    return-void
.end method

.method private static setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 4182
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    .line 4183
    .local v0, "iconClickable":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 4184
    .local v3, "iconLongClickable":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 4185
    .local v1, "iconFocusable":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 4186
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 4187
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 4188
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setLongClickable(Z)V

    .line 4189
    nop

    .line 4191
    if-eqz v1, :cond_3

    .line 4192
    goto :goto_1

    .line 4193
    :cond_3
    const/4 v2, 0x2

    .line 4189
    :goto_1
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4194
    return-void
.end method

.method private static setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 4170
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4171
    invoke-static {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 4172
    return-void
.end method

.method private static setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 4176
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4177
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 4178
    return-void
.end method

.method private setPlaceholderTextEnabled(Z)V
    .locals 1
    .param p1, "placeholderEnabled"    # Z

    .line 2400
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-ne v0, p1, :cond_0

    .line 2401
    return-void

    .line 2405
    :cond_0
    if-eqz p1, :cond_1

    .line 2406
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->addPlaceholderTextView()V

    goto :goto_0

    .line 2408
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->removePlaceholderTextView()V

    .line 2409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    .line 2411
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    .line 2412
    return-void
.end method

.method private shouldUpdateEndDummyDrawable()Z
    .locals 1

    .line 4124
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4125
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasEndIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Landroid/widget/LinearLayout;

    .line 4127
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4124
    :goto_0
    return v0
.end method

.method private shouldUpdateStartDummyDrawable()Z
    .locals 1

    .line 4119
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Landroid/widget/LinearLayout;

    .line 4120
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4119
    :goto_0
    return v0
.end method

.method private shouldUseEditTextBackgroundForBoxBackground()Z
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_0

    .line 998
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 996
    :goto_0
    return v0
.end method

.method private showPlaceholderText()V
    .locals 2

    .line 2434
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2436
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeIn:Landroidx/transition/Fade;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 2437
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2438
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 2439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2440
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2443
    :cond_0
    return-void
.end method

.method private tintEndIconOnError(Z)V
    .locals 3
    .param p1, "tintEndIconOnError"    # Z

    .line 4025
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4028
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4029
    .local v0, "endIconDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 4030
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    .line 4029
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 4031
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4032
    .end local v0    # "endIconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 4033
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 4035
    :goto_0
    return-void
.end method

.method private updateBoxCollapsedPaddingTop()V
    .locals 2

    .line 1003
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast2_0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    nop

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->material_font_2_0_box_collapsed_padding_top:I

    .line 1007
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    goto :goto_0

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    nop

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->material_font_1_3_box_collapsed_padding_top:I

    .line 1011
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 1014
    :cond_1
    :goto_0
    return-void
.end method

.method private updateBoxUnderlineBounds(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 4225
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 4226
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    sub-int/2addr v0, v1

    .line 4227
    .local v0, "top":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineDefault:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 4229
    .end local v0    # "top":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_1

    .line 4230
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    sub-int/2addr v0, v1

    .line 4231
    .restart local v0    # "top":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxUnderlineFocused:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 4233
    .end local v0    # "top":I
    :cond_1
    return-void
.end method

.method private updateCounter()V
    .locals 1

    .line 2304
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 2307
    :cond_1
    return-void
.end method

.method private static updateCounterContentDescription(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "counterView"    # Landroid/widget/TextView;
    .param p2, "length"    # I
    .param p3, "counterMaxLength"    # I
    .param p4, "counterOverflowed"    # Z

    .line 2342
    nop

    .line 2344
    if-eqz p4, :cond_0

    .line 2345
    sget v0, Lcom/google/android/material/R$string;->character_counter_overflowed_content_description:I

    goto :goto_0

    .line 2346
    :cond_0
    sget v0, Lcom/google/android/material/R$string;->character_counter_content_description:I

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 2348
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2343
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2342
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2349
    return-void
.end method

.method private updateCounterTextAppearanceAndColor()V
    .locals 2

    .line 2739
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2740
    nop

    .line 2741
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    .line 2740
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 2742
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 2743
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2745
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 2746
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2749
    :cond_2
    return-void
.end method

.method private updateDropdownMenuBackground()V
    .locals 3

    .line 2953
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2954
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconDelegates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 2955
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateOutlinedRippleEffect(Landroid/widget/AutoCompleteTextView;)V

    .line 2957
    :cond_0
    return-void
.end method

.method private updateDummyDrawables()Z
    .locals 13

    .line 4042
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4043
    return v1

    .line 4046
    :cond_0
    const/4 v0, 0x0

    .line 4048
    .local v0, "updatedIcon":Z
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldUpdateStartDummyDrawable()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 4049
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v2, v7

    .line 4050
    .local v2, "right":I
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawableWidth:I

    if-eq v7, v2, :cond_2

    .line 4051
    :cond_1
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 4052
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawableWidth:I

    .line 4053
    invoke-virtual {v7, v1, v1, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4055
    :cond_2
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v7}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 4056
    .local v7, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v8, v7, v1

    iget-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v8, v9, :cond_4

    .line 4057
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v10, v7, v6

    aget-object v11, v7, v5

    aget-object v12, v7, v4

    invoke-static {v8, v9, v10, v11, v12}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4059
    const/4 v0, 0x1

    goto :goto_0

    .line 4061
    .end local v2    # "right":I
    .end local v7    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 4063
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4064
    .local v2, "compounds":[Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v8, v2, v6

    aget-object v9, v2, v5

    aget-object v10, v2, v4

    invoke-static {v7, v3, v8, v9, v10}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4066
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->startDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 4067
    const/4 v0, 0x1

    goto :goto_1

    .line 4061
    .end local v2    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_0
    nop

    .line 4071
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldUpdateEndDummyDrawable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4072
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4073
    .local v2, "right":I
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v3

    .line 4074
    .local v3, "iconView":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 4075
    nop

    .line 4077
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    .line 4079
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4078
    invoke-static {v8}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v8

    add-int v2, v7, v8

    .line 4081
    :cond_5
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v7}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 4082
    .restart local v7    # "compounds":[Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawableWidth:I

    if-eq v9, v2, :cond_6

    .line 4085
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawableWidth:I

    .line 4086
    invoke-virtual {v8, v1, v1, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4087
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v1, v7, v1

    aget-object v6, v7, v6

    iget-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v4, v7, v4

    invoke-static {v5, v1, v6, v8, v4}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4089
    const/4 v0, 0x1

    goto :goto_2

    .line 4091
    :cond_6
    if-nez v8, :cond_7

    .line 4092
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 4093
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawableWidth:I

    .line 4094
    invoke-virtual {v8, v1, v1, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4097
    :cond_7
    aget-object v8, v7, v5

    iget-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v8, v9, :cond_a

    .line 4098
    aget-object v5, v7, v5

    iput-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 4099
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v1, v7, v1

    aget-object v6, v7, v6

    aget-object v4, v7, v4

    invoke-static {v5, v1, v6, v9, v4}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4101
    const/4 v0, 0x1

    goto :goto_2

    .line 4104
    .end local v2    # "right":I
    .end local v3    # "iconView":Landroid/view/View;
    .end local v7    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_8
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 4106
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4107
    .local v2, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v2, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v5, v7, :cond_9

    .line 4108
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v1, v2, v1

    aget-object v6, v2, v6

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v4

    invoke-static {v5, v1, v6, v7, v4}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4110
    const/4 v0, 0x1

    .line 4112
    :cond_9
    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->endDummyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 4104
    .end local v2    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_2
    nop

    .line 4115
    :goto_3
    return v0
.end method

.method private updateEditTextHeightBasedOnIcon()Z
    .locals 3

    .line 3224
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3225
    return v1

    .line 3231
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3232
    .local v0, "maxIconHeight":I
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 3233
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 3234
    const/4 v1, 0x1

    return v1

    .line 3237
    :cond_1
    return v1
.end method

.method private updateEndLayoutVisibility()V
    .locals 5

    .line 3981
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconFrame:Landroid/widget/FrameLayout;

    .line 3982
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorIconVisible()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3981
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3984
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 3985
    .local v0, "suffixTextVisibility":I
    :goto_1
    nop

    .line 3986
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorIconVisible()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 3987
    .local v1, "shouldBeVisible":Z
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3988
    return-void
.end method

.method private updateErrorIconVisibility()V
    .locals 3

    .line 4471
    nop

    .line 4472
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 4473
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 4474
    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4475
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 4476
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEndLayoutVisibility()V

    .line 4477
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextViewPadding()V

    .line 4478
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasEndIcon()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4479
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 4481
    :cond_2
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 1564
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1566
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    .line 1568
    .local v1, "newTopMargin":I
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 1569
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1570
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1573
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "newTopMargin":I
    :cond_0
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 8
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 1589
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 1590
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1591
    .local v1, "hasText":Z
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1592
    .local v4, "hasFocus":Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v5

    .line 1595
    .local v5, "errorShouldBeShown":Z
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 1596
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v7, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 1597
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 1601
    :cond_2
    if-nez v0, :cond_4

    .line 1603
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_3

    .line 1604
    new-array v2, v2, [I

    const v7, -0x101009e

    aput v7, v2, v3

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    invoke-virtual {v6, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    goto :goto_2

    .line 1606
    :cond_3
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    :goto_2
    nop

    .line 1607
    .local v2, "disabledHintColor":I
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 1608
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 1609
    .end local v2    # "disabledHintColor":I
    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    .line 1610
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 1611
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 1612
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 1613
    :cond_6
    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_7

    .line 1614
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 1617
    :cond_7
    :goto_3
    if-nez v1, :cond_a

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    goto :goto_4

    .line 1624
    :cond_8
    if-nez p2, :cond_9

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v2, :cond_c

    .line 1625
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->expandHint(Z)V

    goto :goto_5

    .line 1619
    :cond_a
    :goto_4
    if-nez p2, :cond_b

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-eqz v2, :cond_c

    .line 1620
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->collapseHint(Z)V

    .line 1628
    :cond_c
    :goto_5
    return-void
.end method

.method private updatePlaceholderMeasurementsBasedOnEditText()V
    .locals 6

    .line 3241
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3243
    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 3244
    .local v0, "editTextGravity":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3246
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 3247
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 3248
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 3249
    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 3250
    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    .line 3246
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3252
    .end local v0    # "editTextGravity":I
    :cond_0
    return-void
.end method

.method private updatePlaceholderText()V
    .locals 1

    .line 2422
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText(I)V

    .line 2423
    return-void
.end method

.method private updatePlaceholderText(I)V
    .locals 1
    .param p1, "inputTextLength"    # I

    .line 2426
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_0

    .line 2427
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->showPlaceholderText()V

    goto :goto_0

    .line 2429
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hidePlaceholderText()V

    .line 2431
    :goto_0
    return-void
.end method

.method private updatePrefixTextViewPadding()V
    .locals 5

    .line 2589
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2590
    return-void

    .line 2592
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isStartIconVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 2593
    .local v0, "startPadding":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 2596
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    .line 2597
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2598
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    .line 2599
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 2600
    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v4

    .line 2593
    invoke-static {v1, v0, v2, v3, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 2601
    return-void
.end method

.method private updatePrefixTextVisibility()V
    .locals 2

    .line 2552
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 2553
    .local v0, "visibility":I
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateStartLayoutVisibility()V

    .line 2556
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2557
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 2558
    return-void
.end method

.method private updateStartLayoutVisibility()V
    .locals 5

    .line 3992
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3993
    .local v0, "prefixTextVisibility":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3994
    invoke-virtual {v3}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 3995
    .local v3, "shouldBeVisible":Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->startLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3996
    return-void
.end method

.method private updateStrokeErrorColor(ZZ)V
    .locals 4
    .param p1, "hasFocus"    # Z
    .param p2, "isHovered"    # Z

    .line 4452
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 4453
    .local v0, "defaultStrokeErrorColor":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 4454
    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 4457
    .local v1, "hoveredStrokeErrorColor":I
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 4458
    invoke-virtual {v3, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 4461
    .local v2, "focusedStrokeErrorColor":I
    if-eqz p1, :cond_0

    .line 4462
    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_0

    .line 4463
    :cond_0
    if-eqz p2, :cond_1

    .line 4464
    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_0

    .line 4466
    :cond_1
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    .line 4468
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10102fe
        0x101009e
    .end array-data
.end method

.method private updateSuffixTextViewPadding()V
    .locals 5

    .line 2683
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2684
    return-void

    .line 2687
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorIconVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 2688
    .local v0, "endPadding":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    .line 2690
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2691
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    .line 2692
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 2693
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 2695
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 2688
    invoke-static {v1, v2, v3, v0, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 2696
    return-void
.end method

.method private updateSuffixTextVisibility()V
    .locals 4

    .line 2642
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 2643
    .local v0, "oldVisibility":I
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHintExpanded()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2644
    .local v1, "newVisibility":I
    :goto_0
    if-eq v0, v1, :cond_2

    .line 2645
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v3

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/EndIconDelegate;->onSuffixVisibilityChanged(Z)V

    .line 2647
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEndLayoutVisibility()V

    .line 2650
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2651
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 2652
    return-void
.end method


# virtual methods
.method public addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 3767
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3768
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3769
    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;->onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 3771
    :cond_0
    return-void
.end method

.method public addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 3739
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 3740
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 885
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 888
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 890
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 897
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 898
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 900
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 902
    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .param p1, "target"    # F

    .line 4535
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 4536
    return-void

    .line 4538
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 4539
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 4540
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4541
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4542
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4550
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 4551
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4552
    return-void
.end method

.method public clearOnEditTextAttachedListeners()V
    .locals 1

    .line 3785
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 3786
    return-void
.end method

.method public clearOnEndIconChangedListeners()V
    .locals 1

    .line 3754
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 3755
    return-void
.end method

.method cutoutIsOpen()Z
    .locals 1

    .line 4339
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    check-cast v0, Lcom/google/android/material/textfield/CutoutDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 1421
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1422
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1423
    return-void

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1429
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1431
    .local v1, "wasProvidingHint":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1432
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1433
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1435
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1438
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1439
    nop

    .line 1440
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "wasProvidingHint":Z
    goto :goto_1

    .line 1437
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    .restart local v1    # "wasProvidingHint":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1438
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1439
    throw v2

    .line 1443
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "wasProvidingHint":Z
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 1444
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1445
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 1447
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setChildCount(I)V

    .line 1448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1449
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v2

    .line 1451
    .local v2, "childStructure":Landroid/view/ViewStructure;
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1452
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-ne v1, v3, :cond_2

    .line 1453
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 1448
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childStructure":Landroid/view/ViewStructure;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1457
    .end local v0    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3105
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    .line 3106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 3107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->restoringSavedState:Z

    .line 3108
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4237
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4238
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->drawHint(Landroid/graphics/Canvas;)V

    .line 4239
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->drawBoxUnderline(Landroid/graphics/Canvas;)V

    .line 4240
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 4344
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v0, :cond_0

    .line 4348
    return-void

    .line 4351
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    .line 4353
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 4355
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 4356
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 4358
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    if-eqz v3, :cond_1

    .line 4359
    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setState([I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 4363
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 4364
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 4366
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 4367
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 4369
    if-eqz v2, :cond_4

    .line 4370
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 4373
    :cond_4
    iput-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->inDrawableStateChanged:Z

    .line 4374
    return-void
.end method

.method public getBaseline()I
    .locals 2

    .line 1577
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1580
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method getBoxBackground()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 906
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 907
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    .line 1277
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    .line 945
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    return v0
.end method

.method public getBoxCollapsedPaddingTop()I
    .locals 1

    .line 1062
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 2

    .line 1374
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 1374
    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 2

    .line 1386
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 1386
    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 2

    .line 1362
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 1362
    :goto_0
    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 2

    .line 1350
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 1350
    :goto_0
    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .line 1160
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    return v0
.end method

.method public getBoxStrokeErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBoxStrokeWidth()I
    .locals 1

    .line 1098
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    return v0
.end method

.method public getBoxStrokeWidthFocused()I
    .locals 1

    .line 1135
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    .line 2723
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 2732
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2735
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1939
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3693
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3653
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconMode()I
    .locals 1

    .line 3491
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    return v0
.end method

.method getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 4000
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 3118
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 2071
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2132
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final getErrorTextCurrentColor()I
    .locals 1

    .line 4576
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 3130
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 3132
    :cond_0
    const/4 v0, 0x0

    .line 3130
    :goto_0
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .line 2047
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1811
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 1

    .line 4571
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 1

    .line 4566
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMaxEms()I
    .locals 1

    .line 1683
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1765
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    return v0
.end method

.method public getMinEms()I
    .locals 1

    .line 1658
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1724
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3876
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3862
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceholderText()Ljava/lang/CharSequence;
    .locals 1

    .line 2395
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlaceholderTextAppearance()I
    .locals 1

    .line 2510
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextAppearance:I

    return v0
.end method

.method public getPlaceholderTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2487
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPrefixText()Ljava/lang/CharSequence;
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrefixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2576
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixTextView()Landroid/widget/TextView;
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3417
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3299
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixText()Ljava/lang/CharSequence;
    .locals 1

    .line 2625
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSuffixTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2670
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSuffixTextView()Landroid/widget/TextView;
    .locals 1

    .line 2638
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 1

    .line 2281
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    return v0
.end method

.method public isEndIconCheckable()Z
    .locals 1

    .line 3610
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isEndIconVisible()Z
    .locals 1

    .line 3570
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isExpandedHintEnabled()Z
    .locals 1

    .line 3163
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    return v0
.end method

.method final isHelperTextDisplayed()Z
    .locals 1

    .line 4561
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result v0

    return v0
.end method

.method public isHelperTextEnabled()Z
    .locals 1

    .line 2041
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 1

    .line 3142
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 1864
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .locals 1

    .line 4556
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3887
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isProvidingHint()Z
    .locals 1

    .line 1876
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    return v0
.end method

.method public isStartIconCheckable()Z
    .locals 1

    .line 3377
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isStartIconVisible()Z
    .locals 1

    .line 3346
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 4244
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4245
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    .line 4246
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 4198
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4200
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 4201
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 4202
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4203
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateBoxUnderlineBounds(Landroid/graphics/Rect;)V

    .line 4205
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 4207
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 4208
    .local v0, "editTextGravity":I
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    and-int/lit8 v3, v0, -0x71

    or-int/lit8 v3, v3, 0x30

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 4210
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 4211
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->calculateCollapsedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(Landroid/graphics/Rect;)V

    .line 4212
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->calculateExpandedTextBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(Landroid/graphics/Rect;)V

    .line 4213
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    .line 4217
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->cutoutEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintExpanded:Z

    if-nez v2, :cond_0

    .line 4218
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->openCutout()V

    .line 4222
    .end local v0    # "editTextGravity":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 3205
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 3207
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextHeightBasedOnIcon()Z

    move-result v0

    .line 3208
    .local v0, "updatedHeight":Z
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    move-result v1

    .line 3209
    .local v1, "updatedIcon":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 3210
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v3, Lcom/google/android/material/textfield/TextInputLayout$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 3218
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderMeasurementsBasedOnEditText()V

    .line 3219
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePrefixTextViewPadding()V

    .line 3220
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextViewPadding()V

    .line 3221
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3078
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 3079
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3080
    return-void

    .line 3082
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 3083
    .local v0, "ss":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3084
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3085
    iget-boolean v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isEndIconChecked:Z

    if-eqz v1, :cond_1

    .line 3087
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v2, Lcom/google/android/material/textfield/TextInputLayout$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/CheckableImageButton;->post(Ljava/lang/Runnable;)Z

    .line 3097
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 3098
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->helperText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 3099
    iget-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->placeholderText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 3100
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    .line 3101
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 10
    .param p1, "layoutDirection"    # I

    .line 3182
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 3183
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 3184
    .local v2, "isLayoutDirectionRtl":Z
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->areCornerRadiiRtl:Z

    if-eq v2, v3, :cond_6

    .line 3186
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    .line 3187
    .local v0, "shouldCornersBeRtl":Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3188
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v1, v3}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    .line 3189
    .local v1, "boxCornerRadiusTopLeft":F
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3190
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v3, v4}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v3

    .line 3191
    .local v3, "boxCornerRadiusTopRight":F
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3192
    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v4, v5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v4

    .line 3193
    .local v4, "boxCornerRadiusBottomLeft":F
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 3194
    invoke-virtual {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    invoke-interface {v5, v6}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v5

    .line 3195
    .local v5, "boxCornerRadiusBottomRight":F
    nop

    .line 3196
    if-eqz v0, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v3

    .line 3197
    :goto_1
    if-eqz v0, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v1

    .line 3198
    :goto_2
    if-eqz v0, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v5

    .line 3199
    :goto_3
    if-eqz v0, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v4

    .line 3195
    :goto_4
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 3201
    .end local v0    # "shouldCornersBeRtl":Z
    .end local v1    # "boxCornerRadiusTopLeft":F
    .end local v3    # "boxCornerRadiusTopRight":F
    .end local v4    # "boxCornerRadiusBottomLeft":F
    .end local v5    # "boxCornerRadiusBottomRight":F
    :cond_6
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 3064
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3065
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3066
    .local v1, "ss":Lcom/google/android/material/textfield/TextInputLayout$SavedState;
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3067
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 3069
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->hasEndIcon()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->isEndIconChecked:Z

    .line 3070
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->hintText:Ljava/lang/CharSequence;

    .line 3071
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->helperText:Ljava/lang/CharSequence;

    .line 3072
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPlaceholderText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->placeholderText:Ljava/lang/CharSequence;

    .line 3073
    return-object v1
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .locals 2
    .param p1, "shouldSkipAnimations"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3957
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3958
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->performClick()Z

    .line 3959
    if-eqz p1, :cond_0

    .line 3960
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 3963
    :cond_0
    return-void
.end method

.method public refreshEndIconDrawableState()V
    .locals 2

    .line 3587
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->refreshIconDrawableState(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 3588
    return-void
.end method

.method public refreshErrorIconDrawableState()V
    .locals 2

    .line 3547
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->refreshIconDrawableState(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 3548
    return-void
.end method

.method public refreshStartIconDrawableState()V
    .locals 2

    .line 3354
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->refreshIconDrawableState(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    .line 3355
    return-void
.end method

.method public removeOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 3780
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editTextAttachedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 3781
    return-void
.end method

.method public removeOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 3749
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 3750
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1
    .param p1, "boxBackgroundColor"    # I

    .line 1238
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    if-eq v0, p1, :cond_0

    .line 1239
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 1240
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    .line 1241
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    .line 1242
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    .line 1243
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 1245
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1
    .param p1, "boxBackgroundColorId"    # I

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 1224
    return-void
.end method

.method public setBoxBackgroundColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "boxBackgroundColorStateList"    # Landroid/content/res/ColorStateList;

    .line 1257
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    .line 1258
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 1259
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    .line 1260
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    .line 1261
    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1262
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    .line 1264
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 1265
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    .line 1267
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 1268
    return-void

    nop

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 928
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-ne p1, v0, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    .line 932
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 933
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 935
    :cond_1
    return-void
.end method

.method public setBoxCollapsedPaddingTop(I)V
    .locals 0
    .param p1, "boxCollapsedPaddingTop"    # I

    .line 1052
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 1053
    return-void
.end method

.method public setBoxCornerRadii(FFFF)V
    .locals 5
    .param p1, "boxCornerRadiusTopStart"    # F
    .param p2, "boxCornerRadiusTopEnd"    # F
    .param p3, "boxCornerRadiusBottomStart"    # F
    .param p4, "boxCornerRadiusBottomEnd"    # F

    .line 1318
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->areCornerRadiiRtl:Z

    .line 1320
    if-eqz v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p1

    .line 1322
    .local v1, "boxCornerRadiusTopLeft":F
    :goto_0
    if-eqz v0, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, p2

    .line 1324
    .local v2, "boxCornerRadiusTopRight":F
    :goto_1
    if-eqz v0, :cond_2

    move v3, p4

    goto :goto_2

    :cond_2
    move v3, p3

    .line 1326
    .local v3, "boxCornerRadiusBottomLeft":F
    :goto_2
    if-eqz v0, :cond_3

    move v0, p3

    goto :goto_3

    :cond_3
    move v0, p4

    .line 1327
    .local v0, "boxCornerRadiusBottomRight":F
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_4

    .line 1328
    invoke-virtual {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopLeftCornerResolvedSize()F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1329
    invoke-virtual {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getTopRightCornerResolvedSize()F

    move-result v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1330
    invoke-virtual {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomLeftCornerResolvedSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1331
    invoke-virtual {v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getBottomRightCornerResolvedSize()F

    move-result v4

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_5

    .line 1332
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1333
    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    .line 1334
    invoke-virtual {v4, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    .line 1335
    invoke-virtual {v4, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    .line 1336
    invoke-virtual {v4, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    .line 1337
    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v4

    .line 1338
    invoke-virtual {v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1339
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 1341
    :cond_5
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .locals 4
    .param p1, "boxCornerRadiusTopStartId"    # I
    .param p2, "boxCornerRadiusTopEndId"    # I
    .param p3, "boxCornerRadiusBottomEndId"    # I
    .param p4, "boxCornerRadiusBottomStartId"    # I

    .line 1294
    nop

    .line 1295
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1296
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1297
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 1298
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 1294
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 1299
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1
    .param p1, "boxStrokeColor"    # I

    .line 1147
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 1148
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1151
    :cond_0
    return-void
.end method

.method public setBoxStrokeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "boxStrokeColorStateList"    # Landroid/content/res/ColorStateList;

    .line 1169
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    .line 1171
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x101009e

    aput v2, v0, v1

    .line 1172
    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    .line 1173
    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1174
    invoke-virtual {p1, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    .line 1176
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 1177
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    goto :goto_0

    .line 1179
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1182
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    .line 1184
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1185
    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "strokeErrorColor"    # Landroid/content/res/ColorStateList;

    .line 1196
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1197
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    .line 1198
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1200
    :cond_0
    return-void
.end method

.method public setBoxStrokeWidth(I)V
    .locals 0
    .param p1, "boxStrokeWidth"    # I

    .line 1087
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1089
    return-void
.end method

.method public setBoxStrokeWidthFocused(I)V
    .locals 0
    .param p1, "boxStrokeWidthFocused"    # I

    .line 1124
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 1126
    return-void
.end method

.method public setBoxStrokeWidthFocusedResource(I)V
    .locals 1
    .param p1, "boxStrokeWidthFocusedResId"    # I

    .line 1112
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidthFocused(I)V

    .line 1113
    return-void
.end method

.method public setBoxStrokeWidthResource(I)V
    .locals 1
    .param p1, "boxStrokeWidthResId"    # I

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeWidth(I)V

    .line 1076
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 2168
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eq v0, p1, :cond_2

    .line 2169
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 2170
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 2171
    sget v2, Lcom/google/android/material/R$id;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 2172
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 2173
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2175
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2176
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 2177
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 2178
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2179
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_textinput_counter_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 2177
    invoke-static {v0, v1}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2180
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    .line 2181
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter()V

    goto :goto_0

    .line 2183
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 2184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 2186
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    .line 2188
    :cond_2
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1
    .param p1, "maxLength"    # I

    .line 2291
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    if-eq v0, p1, :cond_1

    .line 2292
    if-lez p1, :cond_0

    .line 2293
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    goto :goto_0

    .line 2295
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    .line 2297
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_1

    .line 2298
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounter()V

    .line 2301
    :cond_1
    return-void
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1
    .param p1, "counterOverflowTextAppearance"    # I

    .line 2239
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    if-eq v0, p1, :cond_0

    .line 2240
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextAppearance:I

    .line 2241
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    .line 2243
    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "counterOverflowTextColor"    # Landroid/content/res/ColorStateList;

    .line 2255
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2256
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowTextColor:Landroid/content/res/ColorStateList;

    .line 2257
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    .line 2259
    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1
    .param p1, "counterTextAppearance"    # I

    .line 2198
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    if-eq v0, p1, :cond_0

    .line 2199
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextAppearance:I

    .line 2200
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    .line 2202
    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "counterTextColor"    # Landroid/content/res/ColorStateList;

    .line 2213
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2214
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterTextColor:Landroid/content/res/ColorStateList;

    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    .line 2217
    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 1925
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 1926
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1928
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1931
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2703
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 2704
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2705
    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1
    .param p1, "endIconActivated"    # Z

    .line 3579
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setActivated(Z)V

    .line 3580
    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1
    .param p1, "endIconCheckable"    # Z

    .line 3601
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 3602
    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 3666
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 3667
    return-void
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "endIconContentDescription"    # Ljava/lang/CharSequence;

    .line 3680
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3681
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3683
    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 3624
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3625
    return-void
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "endIconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 3638
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3639
    if-eqz p1, :cond_0

    .line 3640
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3641
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshEndIconDrawableState()V

    .line 3643
    :cond_0
    return-void
.end method

.method public setEndIconMode(I)V
    .locals 4
    .param p1, "endIconMode"    # I

    .line 3463
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    if-ne v0, p1, :cond_0

    .line 3464
    return-void

    .line 3466
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    .line 3467
    .local v0, "previousEndIconMode":I
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    .line 3468
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->dispatchOnEndIconChanged(I)V

    .line 3469
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 3470
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/EndIconDelegate;->isBoxBackgroundModeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3471
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->initialize()V

    .line 3479
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3480
    return-void

    .line 3473
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current box background mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported by the end icon mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "endIconOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 3502
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 3503
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "endIconOnLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 3525
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3526
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 3527
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "endIconTintList"    # Landroid/content/res/ColorStateList;

    .line 3708
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3709
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 3710
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3712
    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "endIconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 3723
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 3724
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3725
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3727
    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 3556
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEndIconVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3557
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 3558
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEndLayoutVisibility()V

    .line 3559
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextViewPadding()V

    .line 3560
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 3562
    :cond_1
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 2085
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2086
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    return-void

    .line 2091
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 2094
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2095
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2097
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    .line 2099
    :goto_0
    return-void
.end method

.method public setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorContentDecription"    # Ljava/lang/CharSequence;

    .line 2061
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 2062
    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1950
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorEnabled(Z)V

    .line 1951
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2108
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2109
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshErrorIconDrawableState()V

    .line 2110
    return-void
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "errorIconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 2119
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2120
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateErrorIconVisibility()V

    .line 2121
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 2122
    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "errorIconOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 3513
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 3514
    return-void
.end method

.method public setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "errorIconOnLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 3538
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3539
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 3540
    return-void
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "errorIconTintList"    # Landroid/content/res/ColorStateList;

    .line 2142
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2143
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    .line 2144
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 2146
    :cond_0
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "errorIconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 2156
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2157
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2158
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 2160
    :cond_0
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1, "errorTextAppearance"    # I

    .line 1959
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 1960
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "errorTextColor"    # Landroid/content/res/ColorStateList;

    .line 1964
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1965
    return-void
.end method

.method public setExpandedHintEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3174
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    if-eq v0, p1, :cond_0

    .line 3175
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->expandedHintEnabled:Z

    .line 3176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 3178
    :cond_0
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .line 2022
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_0

    .line 2027
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2028
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 2030
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    .line 2032
    :cond_2
    :goto_0
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "helperTextColor"    # Landroid/content/res/ColorStateList;

    .line 1984
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1985
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2005
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextEnabled(Z)V

    .line 2006
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1
    .param p1, "helperTextTextAppearance"    # I

    .line 1979
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 1980
    return-void
.end method

.method public setHint(I)V
    .locals 1
    .param p1, "textHintId"    # I

    .line 1789
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1790
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 1775
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_0

    .line 1776
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 1777
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 1779
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 3152
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintAnimationEnabled:Z

    .line 3153
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1826
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 1827
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hintEnabled:Z

    .line 1828
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1830
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1831
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1836
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1838
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1839
    .local v1, "editTextHint":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1842
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1843
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1845
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1847
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint:Z

    .line 1851
    .end local v1    # "editTextHint":Ljava/lang/CharSequence;
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1852
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 1855
    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1885
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 1886
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1888
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1891
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateInputLayoutMargins()V

    .line 1893
    :cond_0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "hintTextColor"    # Landroid/content/res/ColorStateList;

    .line 1900
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1901
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 1905
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1907
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1911
    :cond_1
    return-void
.end method

.method public setMaxEms(I)V
    .locals 2
    .param p1, "maxEms"    # I

    .line 1670
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxEms:I

    .line 1671
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1672
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 1674
    :cond_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .line 1737
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->maxWidth:I

    .line 1738
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1739
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 1741
    :cond_0
    return-void
.end method

.method public setMaxWidthResource(I)V
    .locals 1
    .param p1, "maxWidthId"    # I

    .line 1753
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMaxWidth(I)V

    .line 1754
    return-void
.end method

.method public setMinEms(I)V
    .locals 2
    .param p1, "minEms"    # I

    .line 1645
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->minEms:I

    .line 1646
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1647
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinEms(I)V

    .line 1649
    :cond_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 2
    .param p1, "minWidth"    # I

    .line 1696
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->minWidth:I

    .line 1697
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1698
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinWidth(I)V

    .line 1700
    :cond_0
    return-void
.end method

.method public setMinWidthResource(I)V
    .locals 1
    .param p1, "minWidthId"    # I

    .line 1712
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setMinWidth(I)V

    .line 1713
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3832
    nop

    .line 3833
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3832
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 3834
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3849
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3850
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3800
    nop

    .line 3801
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3800
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3802
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3816
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3817
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3902
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3904
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    goto :goto_0

    .line 3905
    :cond_0
    if-nez p1, :cond_1

    .line 3907
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 3909
    :cond_1
    :goto_0
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3925
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    .line 3926
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3927
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3940
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3941
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3942
    return-void
.end method

.method public setPlaceholderText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "placeholderText"    # Ljava/lang/CharSequence;

    .line 2360
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2361
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    .line 2362
    sget v1, Lcom/google/android/material/R$id;->textinput_placeholder:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 2363
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 2366
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->createPlaceholderFadeTransition()Landroidx/transition/Fade;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeIn:Landroidx/transition/Fade;

    .line 2367
    const-wide/16 v1, 0x43

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Fade;->setStartDelay(J)Landroidx/transition/Transition;

    .line 2368
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->createPlaceholderFadeTransition()Landroidx/transition/Fade;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderFadeOut:Landroidx/transition/Fade;

    .line 2370
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextAppearance:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextAppearance(I)V

    .line 2371
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V

    .line 2375
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    goto :goto_0

    .line 2378
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderEnabled:Z

    if-nez v0, :cond_2

    .line 2380
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderTextEnabled(Z)V

    .line 2382
    :cond_2
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderText:Ljava/lang/CharSequence;

    .line 2384
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePlaceholderText()V

    .line 2385
    return-void
.end method

.method public setPlaceholderTextAppearance(I)V
    .locals 1
    .param p1, "placeholderTextAppearance"    # I

    .line 2497
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextAppearance:I

    .line 2498
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2499
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2501
    :cond_0
    return-void
.end method

.method public setPlaceholderTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "placeholderTextColor"    # Landroid/content/res/ColorStateList;

    .line 2472
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2473
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextColor:Landroid/content/res/ColorStateList;

    .line 2474
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->placeholderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2475
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2478
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prefixText"    # Ljava/lang/CharSequence;

    .line 2522
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixText:Ljava/lang/CharSequence;

    .line 2523
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2524
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePrefixTextVisibility()V

    .line 2525
    return-void
.end method

.method public setPrefixTextAppearance(I)V
    .locals 1
    .param p1, "prefixTextAppearance"    # I

    .line 2585
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2586
    return-void
.end method

.method public setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "prefixTextColor"    # Landroid/content/res/ColorStateList;

    .line 2566
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2567
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1
    .param p1, "startIconCheckable"    # Z

    .line 3368
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 3369
    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 3390
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 3391
    return-void
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "startIconContentDescription"    # Ljava/lang/CharSequence;

    .line 3404
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3407
    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 3264
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3265
    return-void
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "startIconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 3277
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3278
    if-eqz p1, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 3281
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshStartIconDrawableState()V

    goto :goto_0

    .line 3283
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 3284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3285
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3286
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 3288
    :goto_0
    return-void
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "startIconOnClickListener"    # Landroid/view/View$OnClickListener;

    .line 3310
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 3311
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "startIconOnLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 3322
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3323
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 3324
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "startIconTintList"    # Landroid/content/res/ColorStateList;

    .line 3432
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 3433
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    .line 3434
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3436
    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "startIconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 3447
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 3448
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3449
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->applyIconTint(Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 3451
    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 3332
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isStartIconVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3333
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 3334
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateStartLayoutVisibility()V

    .line 3335
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updatePrefixTextViewPadding()V

    .line 3336
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    .line 3338
    :cond_1
    return-void
.end method

.method public setSuffixText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "suffixText"    # Ljava/lang/CharSequence;

    .line 2612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixText:Ljava/lang/CharSequence;

    .line 2613
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateSuffixTextVisibility()V

    .line 2615
    return-void
.end method

.method public setSuffixTextAppearance(I)V
    .locals 1
    .param p1, "suffixTextAppearance"    # I

    .line 2679
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2680
    return-void
.end method

.method public setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "suffixTextColor"    # Landroid/content/res/ColorStateList;

    .line 2660
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->suffixTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2661
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textAppearance"    # I

    .line 2753
    const/4 v0, 0x0

    .line 2755
    .local v0, "useDefaultColor":Z
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2757
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 2758
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, -0xff01

    if-ne v1, v2, :cond_0

    .line 2762
    const/4 v0, 0x1

    .line 2768
    :cond_0
    goto :goto_0

    .line 2764
    :catch_0
    move-exception v1

    .line 2767
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 2769
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 2772
    sget v1, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 2773
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->design_error:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2775
    :cond_1
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    .line 3974
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3975
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 3977
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1398
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 1399
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    .line 1401
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 1402
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 1404
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1408
    :cond_0
    return-void
.end method

.method updateCounter(I)V
    .locals 9
    .param p1, "length"    # I

    .line 2310
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 2311
    .local v0, "wasCounterOverflowed":Z
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 2312
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2313
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2314
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    goto :goto_1

    .line 2316
    :cond_0
    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 2317
    nop

    .line 2318
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    .line 2317
    invoke-static {v1, v4, p1, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterContentDescription(Landroid/content/Context;Landroid/widget/TextView;IIZ)V

    .line 2320
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_2

    .line 2321
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateCounterTextAppearanceAndColor()V

    .line 2323
    :cond_2
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v1

    .line 2324
    .local v1, "bidiFormatter":Landroidx/core/text/BidiFormatter;
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 2326
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$string;->character_counter_pattern:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 2327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2325
    invoke-virtual {v1, v3}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2324
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2329
    .end local v1    # "bidiFormatter":Landroidx/core/text/BidiFormatter;
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 2330
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 2331
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 2332
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 2334
    :cond_3
    return-void
.end method

.method updateEditTextBackground()V
    .locals 3

    .line 2962
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2966
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2967
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 2968
    return-void

    .line 2971
    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2972
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2975
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2977
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2979
    invoke-virtual {v1}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2978
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 2977
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 2980
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2982
    nop

    .line 2984
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2983
    invoke-static {v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 2982
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 2988
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 2989
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 2991
    :goto_0
    return-void

    .line 2963
    .end local v0    # "editTextBackground":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_1
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 1585
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(ZZ)V

    .line 1586
    return-void
.end method

.method updateTextInputBoxState()V
    .locals 5

    .line 4377
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackground:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 4381
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 4382
    .local v0, "hasFocus":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 4385
    .local v1, "isHovered":Z
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4386
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledColor:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_2

    .line 4387
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4388
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_6

    .line 4389
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateStrokeErrorColor(ZZ)V

    goto :goto_2

    .line 4391
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_2

    .line 4393
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterOverflowed:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 4394
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->strokeErrorColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_8

    .line 4395
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->updateStrokeErrorColor(ZZ)V

    goto :goto_2

    .line 4397
    :cond_8
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_2

    .line 4399
    :cond_9
    if-eqz v0, :cond_a

    .line 4400
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedStrokeColor:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_2

    .line 4401
    :cond_a
    if-eqz v1, :cond_b

    .line 4402
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredStrokeColor:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    goto :goto_2

    .line 4404
    :cond_b
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultStrokeColor:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeColor:I

    .line 4407
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->updateErrorIconVisibility()V

    .line 4410
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshErrorIconDrawableState()V

    .line 4411
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshStartIconDrawableState()V

    .line 4412
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->refreshEndIconDrawableState()V

    .line 4414
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/textfield/EndIconDelegate;->shouldTintIconOnError()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4415
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->indicatorViewController:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->tintEndIconOnError(Z)V

    .line 4422
    :cond_c
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 4423
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 4424
    .local v3, "originalBoxStrokeWidthPx":I
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4425
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_3

    .line 4427
    :cond_d
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    .line 4429
    :goto_3
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxStrokeWidthPx:I

    if-eq v4, v3, :cond_e

    .line 4431
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->recalculateCutout()V

    .line 4436
    .end local v3    # "originalBoxStrokeWidthPx":I
    :cond_e
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundMode:I

    if-ne v3, v2, :cond_12

    .line 4437
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 4438
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->disabledFilledBackgroundColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    goto :goto_4

    .line 4439
    :cond_f
    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    .line 4440
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->hoveredFilledBackgroundColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    goto :goto_4

    .line 4441
    :cond_10
    if-eqz v0, :cond_11

    .line 4442
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->focusedFilledBackgroundColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    goto :goto_4

    .line 4444
    :cond_11
    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->defaultFilledBackgroundColor:I

    iput v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->boxBackgroundColor:I

    .line 4448
    :cond_12
    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->applyBoxAttributes()V

    .line 4449
    return-void

    .line 4378
    .end local v0    # "hasFocus":Z
    .end local v1    # "isHovered":Z
    :cond_13
    :goto_5
    return-void
.end method
