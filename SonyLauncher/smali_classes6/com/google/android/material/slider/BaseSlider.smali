.class abstract Lcom/google/android/material/slider/BaseSlider;
.super Landroid/view/View;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;,
        Lcom/google/android/material/slider/BaseSlider$SliderState;,
        Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;,
        Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/slider/BaseSlider<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Lcom/google/android/material/slider/BaseOnChangeListener<",
        "TS;>;T::",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field static final DEF_STYLE_RES:I

.field private static final EXCEPTION_ILLEGAL_DISCRETE_VALUE:Ljava/lang/String; = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_MIN_SEPARATION:Ljava/lang/String; = "minSeparation(%s) must be greater or equal to 0"

.field private static final EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE:Ljava/lang/String; = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT:Ljava/lang/String; = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

.field private static final EXCEPTION_ILLEGAL_STEP_SIZE:Ljava/lang/String; = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

.field private static final EXCEPTION_ILLEGAL_VALUE:Ljava/lang/String; = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_FROM:Ljava/lang/String; = "valueFrom(%s) must be smaller than valueTo(%s)"

.field private static final EXCEPTION_ILLEGAL_VALUE_TO:Ljava/lang/String; = "valueTo(%s) must be greater than valueFrom(%s)"

.field private static final HALO_ALPHA:I = 0x3f

.field private static final LABEL_ANIMATION_ENTER_DURATION:J = 0x53L

.field private static final LABEL_ANIMATION_EXIT_DURATION:J = 0x75L

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD:D = 1.0E-4

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8

.field static final UNIT_PX:I = 0x0

.field static final UNIT_VALUE:I = 0x1

.field private static final WARNING_FLOATING_POINT_ERROR:Ljava/lang/String; = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."


# instance fields
.field private accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "TS;T",
            "L;",
            "TT;>.AccessibilityEventSender;"
        }
    .end annotation
.end field

.field private final accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private activeThumbIdx:I

.field private final activeTicksPaint:Landroid/graphics/Paint;

.field private final activeTrackPaint:Landroid/graphics/Paint;

.field private final changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private customThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private customThumbDrawablesForValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private defaultThumbRadius:I

.field private dirtyConfig:Z

.field private focusedThumbIdx:I

.field private forceDrawCompatHalo:Z

.field private formatter:Lcom/google/android/material/slider/LabelFormatter;

.field private haloColor:Landroid/content/res/ColorStateList;

.field private final haloPaint:Landroid/graphics/Paint;

.field private haloRadius:I

.field private final inactiveTicksPaint:Landroid/graphics/Paint;

.field private final inactiveTrackPaint:Landroid/graphics/Paint;

.field private isLongPress:Z

.field private labelBehavior:I

.field private final labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

.field private labelPadding:I

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/tooltip/TooltipDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private labelsAreAnimatedIn:Z

.field private labelsInAnimator:Landroid/animation/ValueAnimator;

.field private labelsOutAnimator:Landroid/animation/ValueAnimator;

.field private lastEvent:Landroid/view/MotionEvent;

.field private minTrackSidePadding:I

.field private final scaledTouchSlop:I

.field private separationUnit:I

.field private stepSize:F

.field private thumbIsPressed:Z

.field private final thumbPaint:Landroid/graphics/Paint;

.field private thumbRadius:I

.field private tickColorActive:Landroid/content/res/ColorStateList;

.field private tickColorInactive:Landroid/content/res/ColorStateList;

.field private tickVisible:Z

.field private ticksCoordinates:[F

.field private touchDownX:F

.field private final touchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private touchPosition:F

.field private trackColorActive:Landroid/content/res/ColorStateList;

.field private trackColorInactive:Landroid/content/res/ColorStateList;

.field private trackHeight:I

.field private trackSidePadding:I

.field private trackTop:I

.field private trackWidth:I

.field private valueFrom:F

.field private valueTo:F

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widgetHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const-class v0, Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    .line 226
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 326
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 330
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 335
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 273
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 280
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 282
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 283
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 288
    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 297
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 302
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 337
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 339
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    .line 340
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 343
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    .line 344
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 347
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 348
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 351
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    .line 352
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    .line 355
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 358
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    .line 359
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 360
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->loadResources(Landroid/content/res/Resources;)V

    .line 366
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/slider/BaseSlider$1;-><init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 381
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setFocusable(Z)V

    .line 382
    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setClickable(Z)V

    .line 385
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    .line 388
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    .line 390
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    .line 391
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 393
    nop

    .line 394
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 395
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .line 191
    invoke-static {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;

    .line 191
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/slider/BaseSlider;)Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;

    .line 191
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # F

    .line 191
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/material/slider/BaseSlider;IF)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;

    .line 191
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/slider/BaseSlider;I)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/slider/BaseSlider;
    .param p1, "x1"    # I

    .line 191
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    move-result v0

    return v0
.end method

.method private adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 886
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    mul-int/lit8 v0, v0, 0x2

    .line 887
    .local v0, "thumbDiameter":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 888
    .local v1, "originalWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 889
    .local v2, "originalHeight":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    if-ne v2, v3, :cond_0

    .line 890
    invoke-virtual {p1, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 892
    :cond_0
    int-to-float v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 893
    .local v3, "scaleRatio":F
    int-to-float v5, v1

    mul-float/2addr v5, v3

    float-to-int v5, v5

    int-to-float v6, v2

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 896
    .end local v3    # "scaleRatio":F
    :goto_0
    return-void
.end method

.method private attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 1
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1543
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRelativeToView(Landroid/view/View;)V

    .line 1544
    return-void
.end method

.method private calculateIncrementForKey(I)Ljava/lang/Float;
    .locals 2
    .param p1, "keyCode"    # I

    .line 2393
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    .line 2394
    .local v0, "increment":F
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 2406
    const/4 v1, 0x0

    return-object v1

    .line 2404
    :sswitch_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2400
    :sswitch_1
    neg-float v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2398
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    neg-float v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 2396
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    neg-float v1, v0

    :goto_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private calculateStepIncrement()F
    .locals 2

    .line 2412
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    return v0
.end method

.method private calculateStepIncrement(I)F
    .locals 3
    .param p1, "stepFactor"    # I

    .line 2420
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateStepIncrement()F

    move-result v0

    .line 2421
    .local v0, "increment":F
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 2422
    .local v1, "numSteps":F
    int-to-float v2, p1

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 2423
    return v0

    .line 2426
    :cond_0
    int-to-float v2, p1

    div-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    return v2
.end method

.method private calculateTop()I
    .locals 4

    .line 1627
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackTop:I

    .line 1628
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    .line 1627
    return v0
.end method

.method private createLabelAnimator(Z)Landroid/animation/ValueAnimator;
    .locals 5
    .param p1, "enter"    # Z

    .line 2052
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2056
    .local v2, "startFraction":F
    :goto_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 2055
    :goto_1
    invoke-static {v3, v2}, Lcom/google/android/material/slider/BaseSlider;->getAnimatorCurrentValueOrDefault(Landroid/animation/ValueAnimator;F)F

    move-result v2

    .line 2057
    if-eqz p1, :cond_2

    move v0, v1

    .line 2058
    .local v0, "endFraction":F
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2059
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz p1, :cond_3

    const-wide/16 v3, 0x53

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x75

    :goto_2
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2060
    nop

    .line 2061
    if-eqz p1, :cond_4

    .line 2062
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_3

    .line 2063
    :cond_4
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 2060
    :goto_3
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2064
    new-instance v3, Lcom/google/android/material/slider/BaseSlider$2;

    invoke-direct {v3, p0}, Lcom/google/android/material/slider/BaseSlider$2;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2076
    return-object v1
.end method

.method private createLabelPool()V
    .locals 4

    .line 739
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 740
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 741
    .local v0, "tooltipDrawables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 742
    .local v2, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 745
    .end local v2    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    goto :goto_0

    .line 746
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 750
    .end local v0    # "tooltipDrawables":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 751
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelMaker:Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;

    invoke-interface {v0}, Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;->createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    .line 752
    .local v0, "tooltipDrawable":Lcom/google/android/material/tooltip/TooltipDrawable;
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 754
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 756
    .end local v0    # "tooltipDrawable":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_3
    goto :goto_1

    .line 759
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    move v0, v1

    .line 760
    .local v0, "strokeWidth":I
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 761
    .restart local v2    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeWidth(F)V

    .line 762
    .end local v2    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_2

    .line 763
    :cond_6
    return-void
.end method

.method private detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V
    .locals 2
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1561
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    .line 1562
    .local v0, "contentViewOverlay":Lcom/google/android/material/internal/ViewOverlayImpl;
    if-eqz v0, :cond_0

    .line 1563
    invoke-interface {v0, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->detachView(Landroid/view/View;)V

    .line 1566
    :cond_0
    return-void
.end method

.method private dimenToValue(F)F
    .locals 3
    .param p1, "dimen"    # F

    .line 1996
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1997
    return v0

    .line 1999
    :cond_0
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private dispatchOnChangedFromUser(I)V
    .locals 4
    .param p1, "idx"    # I

    .line 2202
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 2203
    .local v1, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    .line 2204
    .end local v1    # "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    goto :goto_0

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->scheduleAccessibilityEventSender(I)V

    .line 2208
    :cond_1
    return-void
.end method

.method private dispatchOnChangedProgrammatically()V
    .locals 6

    .line 2193
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnChangeListener;

    .line 2194
    .local v1, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 2195
    .local v3, "value":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, p0, v4, v5}, Lcom/google/android/material/slider/BaseOnChangeListener;->onValueChange(Ljava/lang/Object;FZ)V

    .line 2196
    .end local v3    # "value":Ljava/lang/Float;
    goto :goto_1

    .line 2197
    .end local v1    # "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    :cond_0
    goto :goto_0

    .line 2198
    :cond_1
    return-void
.end method

.method private drawActiveTrack(Landroid/graphics/Canvas;II)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1704
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1705
    .local v0, "activeRange":[F
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1706
    .local v2, "right":F
    int-to-float v1, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 1707
    .local v1, "left":F
    int-to-float v6, p3

    int-to-float v8, p3

    iget-object v9, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1708
    return-void
.end method

.method private drawInactiveTrack(Landroid/graphics/Canvas;II)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1678
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1679
    .local v0, "activeRange":[F
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1680
    .local v2, "right":F
    add-int v3, v1, p2

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 1681
    int-to-float v6, p3

    add-int/2addr v1, p2

    int-to-float v7, v1

    int-to-float v8, p3

    iget-object v9, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1685
    :cond_0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v3, v1

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v5, p2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1686
    .local v3, "left":F
    int-to-float v4, v1

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 1687
    int-to-float v6, v1

    int-to-float v7, p3

    int-to-float v9, p3

    iget-object v10, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1689
    :cond_1
    return-void
.end method

.method private drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I
    .param p4, "value"    # F
    .param p5, "thumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 1758
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1759
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 1761
    invoke-direct {p0, p4}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1762
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    .line 1764
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 1759
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1765
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1766
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1767
    return-void
.end method

.method private drawThumbs(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1738
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1739
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1740
    .local v1, "value":F
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    .line 1741
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1742
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1743
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/graphics/drawable/Drawable;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1748
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    .line 1749
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v3

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p3

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->thumbPaint:Landroid/graphics/Paint;

    .line 1748
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1751
    :cond_2
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/slider/BaseSlider;->drawThumbDrawable(Landroid/graphics/Canvas;IIFLandroid/graphics/drawable/Drawable;)V

    .line 1738
    .end local v1    # "value":F
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1754
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private ensureLabelsAdded()V
    .locals 6

    .line 2101
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2103
    return-void

    .line 2109
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2110
    iput-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 2111
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 2112
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 2113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2118
    .local v0, "labelItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/material/tooltip/TooltipDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2119
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    if-ne v3, v4, :cond_2

    .line 2121
    goto :goto_1

    .line 2124
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 2118
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2127
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/slider/BaseSlider;->setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V

    .line 2135
    return-void

    .line 2128
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    .line 2130
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 2129
    const-string v2, "Not enough labels(%d) to display all the values(%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private ensureLabelsRemoved()V
    .locals 2

    .line 2082
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    if-eqz v0, :cond_0

    .line 2083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 2084
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    .line 2085
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelsInAnimator:Landroid/animation/ValueAnimator;

    .line 2086
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/slider/BaseSlider$3;-><init>(Lcom/google/android/material/slider/BaseSlider;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2096
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2098
    :cond_0
    return-void
.end method

.method private focusThumbOnFocusGained(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 2444
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2455
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2456
    goto :goto_0

    .line 2449
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2450
    goto :goto_0

    .line 2452
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2453
    goto :goto_0

    .line 2446
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2447
    nop

    .line 2462
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x11 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private formatValue(F)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # F

    .line 2138
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    invoke-interface {v0, p1}, Lcom/google/android/material/slider/LabelFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2142
    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    const-string v0, "%.0f"

    goto :goto_0

    :cond_1
    const-string v0, "%.2f"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveRange()[F
    .locals 8

    .line 1668
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1669
    .local v0, "max":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1670
    .local v1, "min":F
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v2

    .line 1671
    .local v2, "left":F
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v4

    .line 1674
    .local v4, "right":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v5, :cond_1

    new-array v5, v7, [F

    aput v4, v5, v6

    aput v2, v5, v3

    goto :goto_1

    :cond_1
    new-array v5, v7, [F

    aput v2, v5, v6

    aput v4, v5, v3

    :goto_1
    return-object v5
.end method

.method private static getAnimatorCurrentValueOrDefault(Landroid/animation/ValueAnimator;F)F
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;
    .param p1, "defaultValue"    # F

    .line 2034
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2036
    .local v0, "value":F
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2037
    return v0

    .line 2040
    .end local v0    # "value":F
    :cond_0
    return p1
.end method

.method private getClampedValue(IF)F
    .locals 4
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .line 1984
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v0

    .line 1985
    .local v0, "minSeparation":F
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->dimenToValue(F)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 1986
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1987
    neg-float v0, v0

    .line 1990
    :cond_1
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    .line 1991
    .local v1, "upperBound":F
    :goto_1
    add-int/lit8 v2, p1, -0x1

    if-gez v2, :cond_3

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    .line 1992
    .local v2, "lowerBound":F
    :goto_2
    invoke-static {p2, v2, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    return v3
.end method

.method private getColorForState(Landroid/content/res/ColorStateList;)I
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 2246
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getValueOfTouchPosition()F
    .locals 6

    .line 2013
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapPosition(F)D

    move-result-wide v0

    .line 2016
    .local v0, "position":D
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2017
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 2019
    :cond_0
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v2, v3

    float-to-double v4, v2

    mul-double/2addr v4, v0

    float-to-double v2, v3

    add-double/2addr v4, v2

    double-to-float v2, v4

    return v2
.end method

.method private getValueOfTouchPositionAbsolute()F
    .locals 3

    .line 1945
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1946
    .local v0, "position":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1947
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1949
    :cond_0
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private initializeCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "originalDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 880
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 881
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 882
    return-object v0
.end method

.method private invalidateTrack()V
    .locals 3

    .line 2165
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2166
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2167
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2168
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2169
    return-void
.end method

.method private isInVerticalScrollingContainer()Z
    .locals 5

    .line 2179
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2180
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2181
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2182
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 2183
    .local v2, "canScrollVertically":Z
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2184
    return v3

    .line 2186
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2187
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "canScrollVertically":Z
    goto :goto_0

    .line 2188
    :cond_3
    return v2
.end method

.method private isMultipleOfStepSize(F)Z
    .locals 6
    .param p1, "value"    # F

    .line 533
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/math/BigDecimal;

    .line 534
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 535
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 539
    .local v0, "result":D
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private loadResources(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 398
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 400
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    .line 401
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 403
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_thumb_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    .line 405
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackTop:I

    .line 407
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    .line 408
    return-void
.end method

.method private maybeCalculateTicksCoordinates()V
    .locals 6

    .line 1585
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1586
    return-void

    .line 1589
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 1591
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1593
    .local v0, "tickCount":I
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1594
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_2

    .line 1595
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    .line 1598
    :cond_2
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1599
    .local v1, "interval":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    .line 1600
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 1601
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    .line 1599
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1603
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private maybeDrawHalo(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "top"    # I

    .line 1771
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1773
    .local v0, "centerX":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 1775
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v2, v0, v1

    int-to-float v4, v2

    sub-int v2, p3, v1

    int-to-float v5, v2

    add-int v2, v0, v1

    int-to-float v6, v2

    add-int/2addr v1, p3

    int-to-float v7, v1

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1782
    :cond_0
    int-to-float v1, v0

    int-to-float v2, p3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1784
    .end local v0    # "centerX":I
    :cond_1
    return-void
.end method

.method private maybeDrawTicks(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1711
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1715
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveRange()[F

    move-result-object v0

    .line 1716
    .local v0, "activeRange":[F
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v1, v3}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    move-result v1

    .line 1717
    .local v1, "leftPivotIndex":I
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-static {v3, v4}, Lcom/google/android/material/slider/BaseSlider;->pivotIndex([FF)I

    move-result v3

    .line 1720
    .local v3, "rightPivotIndex":I
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1723
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v3, 0x2

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1730
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider;->ticksCoordinates:[F

    mul-int/lit8 v4, v3, 0x2

    array-length v5, v2

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1735
    return-void

    .line 1712
    .end local v0    # "activeRange":[F
    .end local v1    # "leftPivotIndex":I
    .end local v3    # "rightPivotIndex":I
    :cond_1
    :goto_0
    return-void
.end method

.method private maybeIncreaseTrackSidePadding()V
    .locals 2

    .line 505
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbRadius:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 506
    .local v0, "increasedSidePadding":I
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->minTrackSidePadding:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 507
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    .line 510
    :cond_0
    return-void
.end method

.method private moveFocus(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 2359
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2361
    .local v0, "oldFocusedThumbIdx":I
    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 2362
    .local v1, "newFocusedThumbIdx":J
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-long v9, v3

    const-wide/16 v7, 0x0

    move-wide v5, v1

    invoke-static/range {v5 .. v10}, Landroidx/core/math/MathUtils;->clamp(JJJ)J

    move-result-wide v5

    long-to-int v3, v5

    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 2363
    if-ne v3, v0, :cond_0

    .line 2365
    const/4 v3, 0x0

    return v3

    .line 2367
    :cond_0
    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2368
    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2370
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 2371
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2372
    return v4
.end method

.method private moveFocusInAbsoluteDirection(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 2383
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2385
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int v0, p1

    :goto_0
    move p1, v0

    .line 2387
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    return v0
.end method

.method private normalizeValue(F)F
    .locals 3
    .param p1, "value"    # F

    .line 1696
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float v1, p1, v0

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 1697
    .local v1, "normalized":F
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0

    .line 1700
    :cond_0
    return v1
.end method

.method private onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2304
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 2316
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2304
    sparse-switch p1, :sswitch_data_0

    .line 2337
    const/4 v0, 0x0

    return-object v0

    .line 2326
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2327
    return-object v2

    .line 2318
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    .line 2319
    return-object v2

    .line 2306
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2307
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2310
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2311
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2313
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2330
    :sswitch_3
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2331
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2332
    return-object v2

    .line 2321
    :sswitch_4
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2322
    return-object v2

    .line 2315
    :sswitch_5
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->moveFocusInAbsoluteDirection(I)Z

    .line 2316
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x3d -> :sswitch_2
        0x42 -> :sswitch_3
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private onStartTrackingTouch()V
    .locals 2

    .line 2212
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2213
    .local v1, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStartTrackingTouch(Ljava/lang/Object;)V

    .line 2214
    .end local v1    # "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    goto :goto_0

    .line 2215
    :cond_0
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 2

    .line 2219
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/slider/BaseOnSliderTouchListener;

    .line 2220
    .local v1, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    invoke-interface {v1, p0}, Lcom/google/android/material/slider/BaseOnSliderTouchListener;->onStopTrackingTouch(Ljava/lang/Object;)V

    .line 2221
    .end local v1    # "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    goto :goto_0

    .line 2222
    :cond_0
    return-void
.end method

.method private static parseLabelDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 497
    sget v0, Lcom/google/android/material/R$styleable;->Slider_labelStyle:I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    .line 501
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 497
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static pivotIndex([FF)I
    .locals 1
    .param p0, "coordinates"    # [F
    .param p1, "position"    # F

    .line 1885
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 411
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    sget v5, Lcom/google/android/material/slider/BaseSlider;->DEF_STYLE_RES:I

    const/4 v8, 0x0

    new-array v6, v8, [I

    .line 412
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 414
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_valueFrom:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 415
    sget v2, Lcom/google/android/material/R$styleable;->Slider_android_valueTo:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 416
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Float;

    iget v5, v0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v4}, Lcom/google/android/material/slider/BaseSlider;->setValues([Ljava/lang/Float;)V

    .line 417
    sget v4, Lcom/google/android/material/R$styleable;->Slider_android_stepSize:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 419
    sget v4, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 422
    .local v4, "hasTrackColor":Z
    if-eqz v4, :cond_0

    sget v5, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/google/android/material/R$styleable;->Slider_trackColorInactive:I

    .line 424
    .local v5, "trackColorInactiveRes":I
    :goto_0
    if-eqz v4, :cond_1

    sget v6, Lcom/google/android/material/R$styleable;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget v6, Lcom/google/android/material/R$styleable;->Slider_trackColorActive:I

    .line 426
    .local v6, "trackColorActiveRes":I
    :goto_1
    nop

    .line 427
    invoke-static {v7, v1, v5}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 428
    .local v9, "trackColorInactive":Landroid/content/res/ColorStateList;
    nop

    .line 429
    if-eqz v9, :cond_2

    .line 430
    move-object v10, v9

    goto :goto_2

    .line 431
    :cond_2
    sget v10, Lcom/google/android/material/R$color;->material_slider_inactive_track_color:I

    invoke-static {v7, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 428
    :goto_2
    invoke-virtual {v0, v10}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 433
    nop

    .line 434
    invoke-static {v7, v1, v6}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 435
    .local v10, "trackColorActive":Landroid/content/res/ColorStateList;
    nop

    .line 436
    if-eqz v10, :cond_3

    .line 437
    move-object v11, v10

    goto :goto_3

    .line 438
    :cond_3
    sget v11, Lcom/google/android/material/R$color;->material_slider_active_track_color:I

    invoke-static {v7, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 435
    :goto_3
    invoke-virtual {v0, v11}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 440
    sget v11, Lcom/google/android/material/R$styleable;->Slider_thumbColor:I

    .line 441
    invoke-static {v7, v1, v11}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 442
    .local v11, "thumbColor":Landroid/content/res/ColorStateList;
    iget-object v12, v0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v12, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 444
    sget v12, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 445
    sget v12, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeColor:I

    .line 446
    invoke-static {v7, v1, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 445
    invoke-virtual {v0, v12}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 448
    :cond_4
    sget v12, Lcom/google/android/material/R$styleable;->Slider_thumbStrokeWidth:I

    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 450
    sget v12, Lcom/google/android/material/R$styleable;->Slider_haloColor:I

    .line 451
    invoke-static {v7, v1, v12}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 452
    .local v12, "haloColor":Landroid/content/res/ColorStateList;
    nop

    .line 453
    if-eqz v12, :cond_5

    .line 454
    move-object v13, v12

    goto :goto_4

    .line 455
    :cond_5
    sget v13, Lcom/google/android/material/R$color;->material_slider_halo_color:I

    invoke-static {v7, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 452
    :goto_4
    invoke-virtual {v0, v13}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 457
    sget v13, Lcom/google/android/material/R$styleable;->Slider_tickVisible:I

    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 458
    sget v13, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    .line 460
    .local v13, "hasTickColor":Z
    if-eqz v13, :cond_6

    sget v14, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_5

    :cond_6
    sget v14, Lcom/google/android/material/R$styleable;->Slider_tickColorInactive:I

    .line 462
    .local v14, "tickColorInactiveRes":I
    :goto_5
    if-eqz v13, :cond_7

    sget v15, Lcom/google/android/material/R$styleable;->Slider_tickColor:I

    goto :goto_6

    :cond_7
    sget v15, Lcom/google/android/material/R$styleable;->Slider_tickColorActive:I

    .line 463
    .local v15, "tickColorActiveRes":I
    :goto_6
    nop

    .line 464
    invoke-static {v7, v1, v14}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 465
    .local v16, "tickColorInactive":Landroid/content/res/ColorStateList;
    nop

    .line 466
    if-eqz v16, :cond_8

    .line 467
    move-object/from16 v2, v16

    goto :goto_7

    .line 468
    :cond_8
    sget v2, Lcom/google/android/material/R$color;->material_slider_inactive_tick_marks_color:I

    invoke-static {v7, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 465
    :goto_7
    invoke-virtual {v0, v2}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 470
    nop

    .line 471
    invoke-static {v7, v1, v15}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 472
    .local v2, "tickColorActive":Landroid/content/res/ColorStateList;
    nop

    .line 473
    if-eqz v2, :cond_9

    .line 474
    move-object v3, v2

    goto :goto_8

    .line 475
    :cond_9
    sget v3, Lcom/google/android/material/R$color;->material_slider_active_tick_marks_color:I

    invoke-static {v7, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 472
    :goto_8
    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 478
    sget v3, Lcom/google/android/material/R$styleable;->Slider_thumbRadius:I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 479
    sget v3, Lcom/google/android/material/R$styleable;->Slider_haloRadius:I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 481
    sget v3, Lcom/google/android/material/R$styleable;->Slider_thumbElevation:I

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 483
    sget v3, Lcom/google/android/material/R$styleable;->Slider_trackHeight:I

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    .line 485
    sget v3, Lcom/google/android/material/R$styleable;->Slider_labelBehavior:I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 487
    sget v3, Lcom/google/android/material/R$styleable;->Slider_android_enabled:I

    const/4 v8, 0x1

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-nez v3, :cond_a

    .line 488
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    .line 491
    :cond_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 492
    return-void
.end method

.method private scheduleAccessibilityEventSender(I)V
    .locals 3
    .param p1, "idx"    # I

    .line 2493
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 2494
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;-><init>(Lcom/google/android/material/slider/BaseSlider;Lcom/google/android/material/slider/BaseSlider$1;)V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    goto :goto_0

    .line 2496
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2498
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;->setVirtualViewId(I)V

    .line 2499
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/slider/BaseSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2500
    return-void
.end method

.method private setValueForLabel(Lcom/google/android/material/tooltip/TooltipDrawable;F)V
    .locals 4
    .param p1, "label"    # Lcom/google/android/material/tooltip/TooltipDrawable;
    .param p2, "value"    # F

    .line 2146
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->formatValue(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2148
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    .line 2150
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2151
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2152
    .local v0, "left":I
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->labelPadding:I

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 2153
    .local v1, "top":I
    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(IIII)V

    .line 2157
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2158
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lcom/google/android/material/internal/DescendantOffsetUtils;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2159
    invoke-virtual {p1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2161
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/material/internal/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 2162
    return-void
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 715
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 721
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 722
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    return-void

    .line 727
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 730
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 731
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 732
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->createLabelPool()V

    .line 733
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedProgrammatically()V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 735
    return-void

    .line 716
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one value must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDrawCompatHalo()Z
    .locals 2

    .line 1787
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1787
    :goto_1
    return v0
.end method

.method private snapActiveThumbToValue(F)Z
    .locals 1
    .param p1, "value"    # F

    .line 1963
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/slider/BaseSlider;->snapThumbToValue(IF)Z

    move-result v0

    return v0
.end method

.method private snapPosition(F)D
    .locals 5
    .param p1, "position"    # F

    .line 1889
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1890
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 1891
    .local v0, "stepCount":I
    int-to-float v1, v0

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    return-wide v1

    .line 1894
    .end local v0    # "stepCount":I
    :cond_0
    float-to-double v0, p1

    return-wide v0
.end method

.method private snapThumbToValue(IF)Z
    .locals 4
    .param p1, "idx"    # I
    .param p2, "value"    # F

    .line 1967
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 1970
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1971
    const/4 v0, 0x0

    return v0

    .line 1974
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->getClampedValue(IF)F

    move-result v0

    .line 1976
    .local v0, "newValue":F
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1978
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchOnChangedFromUser(I)V

    .line 1979
    const/4 v1, 0x1

    return v1
.end method

.method private snapTouchPosition()Z
    .locals 1

    .line 1959
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    move-result v0

    return v0
.end method

.method private updateHaloHotspot()V
    .locals 7

    .line 1615
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1616
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1617
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1619
    .local v1, "x":I
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v2

    .line 1620
    .local v2, "y":I
    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    sub-int v4, v1, v3

    sub-int v5, v2, v3

    add-int v6, v1, v3

    add-int/2addr v3, v2

    invoke-static {v0, v4, v5, v6, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1624
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method private updateTrackWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .line 1607
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    .line 1610
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 1611
    return-void
.end method

.method private validateConfigurationIfDirty()V
    .locals 1

    .line 602
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueFrom()V

    .line 604
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValueTo()V

    .line 605
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateStepSize()V

    .line 606
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateValues()V

    .line 607
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateMinSeparation()V

    .line 608
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->warnAboutFloatingPointError()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 611
    :cond_0
    return-void
.end method

.method private validateMinSeparation()V
    .locals 7

    .line 563
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getMinSeparation()F

    move-result v0

    .line 564
    .local v0, "minSeparation":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_3

    .line 568
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    cmpl-float v5, v2, v1

    if-lez v5, :cond_2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 569
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    const/4 v5, 0x2

    if-ne v1, v4, :cond_1

    .line 574
    cmpg-float v1, v0, v2

    if-ltz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 577
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    .line 576
    const-string v3, "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v5, [Ljava/lang/Object;

    .line 572
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    .line 571
    const-string v3, "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_2
    :goto_0
    return-void

    .line 565
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v2, v4, [Ljava/lang/Object;

    .line 566
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "minSeparation(%s) must be greater or equal to 0"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateStepSize()V
    .locals 4

    .line 543
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 545
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1
    :goto_0
    return-void
.end method

.method private validateValueFrom()V
    .locals 4

    .line 513
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 517
    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 515
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "valueFrom(%s) must be smaller than valueTo(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValueTo()V
    .locals 4

    .line 520
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    .line 524
    return-void

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 522
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "valueTo(%s) must be greater than valueFrom(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateValues()V
    .locals 8

    .line 550
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 551
    .local v1, "value":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v7, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_2

    .line 555
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->valueLandsOnTick(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 557
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    .end local v1    # "value":Ljava/lang/Float;
    :cond_1
    :goto_1
    goto :goto_0

    .line 552
    .restart local v1    # "value":Ljava/lang/Float;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    iget v5, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 553
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v4

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    .end local v1    # "value":Ljava/lang/Float;
    :cond_3
    return-void
.end method

.method private valueLandsOnTick(F)Z
    .locals 1
    .param p1, "value"    # F

    .line 528
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->isMultipleOfStepSize(F)Z

    move-result v0

    return v0
.end method

.method private valueToX(F)F
    .locals 2
    .param p1, "value"    # F

    .line 2023
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private warnAboutFloatingPointError()V
    .locals 8

    .line 583
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 585
    return-void

    .line 588
    :cond_0
    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly."

    if-eqz v1, :cond_1

    .line 589
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "stepSize"

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 593
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "valueFrom"

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    .line 597
    sget-object v1, Lcom/google/android/material/slider/BaseSlider;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "valueTo"

    aput-object v6, v4, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_3
    return-void
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 929
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    return-void
.end method

.method public addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 952
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    return-void
.end method

.method public clearOnChangeListeners()V
    .locals 1

    .line 943
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 944
    return-void
.end method

.method public clearOnSliderTouchListeners()V
    .locals 1

    .line 966
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 967
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2477
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2484
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 2226
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2228
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2229
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2230
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2231
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2232
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 2233
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2234
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tooltip/TooltipDrawable;->setState([I)Z

    .line 2236
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    :cond_0
    goto :goto_0

    .line 2237
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2238
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    .line 2240
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2241
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2242
    return-void
.end method

.method forceDrawCompatHalo(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 2251
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->forceDrawCompatHalo:Z

    .line 2252
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2472
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 2466
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public getActiveThumbIndex()I
    .locals 1

    .line 919
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    return v0
.end method

.method public getFocusedThumbIndex()I
    .locals 1

    .line 900
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    return v0
.end method

.method public getHaloRadius()I
    .locals 1

    .line 1160
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    return v0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1264
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelBehavior()I
    .locals 1

    .line 1202
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    return v0
.end method

.method protected getMinSeparation()F
    .locals 1

    .line 2009
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 775
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    return v0
.end method

.method public getThumbElevation()F
    .locals 1

    .line 995
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getElevation()F

    move-result v0

    return v0
.end method

.method public getThumbRadius()I
    .locals 1

    .line 1027
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    return v0
.end method

.method public getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1107
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getThumbStrokeWidth()F
    .locals 1

    .line 1148
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1298
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1361
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1390
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1330
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    return-object v0

    .line 1331
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1477
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackHeight()I
    .locals 1

    .line 1239
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    return v0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1506
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackSidePadding()I
    .locals 1

    .line 1222
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    return v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1446
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    return-object v0

    .line 1447
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackWidth()I
    .locals 1

    .line 1228
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    return v0
.end method

.method public getValueFrom()F
    .locals 1

    .line 620
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    return v0
.end method

.method public getValueTo()F
    .locals 1

    .line 646
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    return v0
.end method

.method getValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasLabelFormatter()Z
    .locals 1

    .line 974
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isRtl()Z
    .locals 2

    .line 2347
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTickVisible()Z
    .locals 1

    .line 1416
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1535
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1537
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1538
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->attachLabelToContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 1539
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1540
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1548
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityEventSender:Lcom/google/android/material/slider/BaseSlider$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1552
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelsAreAnimatedIn:Z

    .line 1553
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 1554
    .local v1, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->detachLabelFromContentView(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    .line 1555
    .end local v1    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1557
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1558
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1633
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    if-eqz v0, :cond_0

    .line 1634
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->validateConfigurationIfDirty()V

    .line 1637
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeCalculateTicksCoordinates()V

    .line 1640
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1642
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v0

    .line 1644
    .local v0, "top":I
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawInactiveTrack(Landroid/graphics/Canvas;II)V

    .line 1645
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1646
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawActiveTrack(Landroid/graphics/Canvas;II)V

    .line 1649
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawTicks(Landroid/graphics/Canvas;)V

    .line 1651
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1652
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->maybeDrawHalo(Landroid/graphics/Canvas;II)V

    .line 1655
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1656
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsAdded()V

    .line 1660
    :cond_3
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/slider/BaseSlider;->drawThumbs(Landroid/graphics/Canvas;II)V

    .line 1661
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2432
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2433
    if-nez p1, :cond_0

    .line 2434
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2435
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 2436
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->clearKeyboardFocusForVirtualView(I)Z

    goto :goto_0

    .line 2438
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/slider/BaseSlider;->focusThumbOnFocusGained(I)V

    .line 2439
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 2441
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2256
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2257
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2262
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2266
    :cond_1
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 2267
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDownNoActiveThumb(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 2268
    .local v0, "handled":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2271
    .end local v0    # "handled":Ljava/lang/Boolean;
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 2272
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->calculateIncrementForKey(I)Ljava/lang/Float;

    move-result-object v0

    .line 2273
    .local v0, "increment":Ljava/lang/Float;
    if-eqz v0, :cond_5

    .line 2274
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->snapActiveThumbToValue(F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2275
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 2276
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2278
    :cond_4
    return v2

    .line 2280
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 2300
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2282
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2283
    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v1

    return v1

    .line 2286
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2287
    invoke-direct {p0, v3}, Lcom/google/android/material/slider/BaseSlider;->moveFocus(I)Z

    move-result v1

    return v1

    .line 2289
    :cond_7
    return v1

    .line 2292
    :sswitch_1
    iput v3, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 2293
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 2294
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2295
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x3d -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2342
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->isLongPress:Z

    .line 2343
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1570
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->widgetHeight:I

    .line 1574
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    .line 1572
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1570
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 1576
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2531
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/slider/BaseSlider$SliderState;

    .line 2532
    .local v0, "sliderState":Lcom/google/android/material/slider/BaseSlider$SliderState;
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2534
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 2535
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 2536
    iget-object v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 2537
    iget v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 2538
    iget-boolean v1, v0, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    if-eqz v1, :cond_0

    .line 2539
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 2541
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 2519
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2520
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$SliderState;

    invoke-direct {v1, v0}, Lcom/google/android/material/slider/BaseSlider$SliderState;-><init>(Landroid/os/Parcelable;)V

    .line 2521
    .local v1, "sliderState":Lcom/google/android/material/slider/BaseSlider$SliderState;
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    iput v2, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueFrom:F

    .line 2522
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    iput v2, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->valueTo:F

    .line 2523
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->values:Ljava/util/ArrayList;

    .line 2524
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    iput v2, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->stepSize:F

    .line 2525
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->hasFocus()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/material/slider/BaseSlider$SliderState;->hasFocus:Z

    .line 2526
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1580
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->updateTrackWidth(I)V

    .line 1581
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1582
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1794
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1795
    return v1

    .line 1797
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1798
    .local v0, "x":F
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1799
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1800
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchPosition:F

    .line 1802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 1827
    :pswitch_0
    iget-boolean v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    if-nez v2, :cond_2

    .line 1829
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 1830
    return v1

    .line 1832
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1833
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1836
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1838
    goto/16 :goto_0

    .line 1841
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1842
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1843
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1845
    goto/16 :goto_0

    .line 1847
    :pswitch_1
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1849
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 1850
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 1851
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 1852
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 1853
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1854
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1858
    :cond_4
    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1859
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1860
    iput v2, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1861
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStopTrackingTouch()V

    .line 1863
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V

    .line 1864
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1865
    goto :goto_0

    .line 1804
    :pswitch_2
    iput v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchDownX:F

    .line 1808
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->isInVerticalScrollingContainer()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1809
    goto :goto_0

    .line 1812
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1814
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->pickActiveThumb()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1816
    goto :goto_0

    .line 1819
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestFocus()Z

    .line 1820
    iput-boolean v3, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    .line 1821
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->snapTouchPosition()Z

    .line 1822
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->updateHaloHotspot()V

    .line 1823
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1824
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->onStartTrackingTouch()V

    .line 1825
    nop

    .line 1871
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbIsPressed:Z

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->setPressed(Z)V

    .line 1873
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->lastEvent:Landroid/view/MotionEvent;

    .line 1874
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected pickActiveThumb()Z
    .locals 12

    .line 1903
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 1904
    return v2

    .line 1907
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueOfTouchPositionAbsolute()F

    move-result v0

    .line 1908
    .local v0, "touchValue":F
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    move-result v3

    .line 1909
    .local v3, "touchX":F
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1910
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1911
    .local v5, "activeThumbDiff":F
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1912
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1913
    .local v7, "valueDiff":F
    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/material/slider/BaseSlider;->valueToX(F)F

    move-result v8

    .line 1914
    .local v8, "valueX":F
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-le v9, v2, :cond_1

    .line 1915
    goto :goto_4

    .line 1918
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    goto :goto_1

    :cond_2
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    :goto_1
    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v4

    .line 1921
    .local v9, "movingForward":Z
    :goto_2
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_4

    .line 1922
    move v5, v7

    .line 1923
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1924
    goto :goto_3

    .line 1927
    :cond_4
    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    .line 1929
    sub-float v10, v8, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/google/android/material/slider/BaseSlider;->scaledTouchSlop:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 1930
    iput v1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1931
    return v4

    .line 1934
    :cond_5
    if-eqz v9, :cond_6

    .line 1935
    move v5, v7

    .line 1936
    iput v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 1911
    .end local v7    # "valueDiff":F
    .end local v8    # "valueX":F
    .end local v9    # "movingForward":Z
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1941
    .end local v6    # "i":I
    :cond_7
    :goto_4
    iget v6, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    if-eq v6, v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    return v2
.end method

.method public removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 938
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnChangeListener;, "TL;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->changeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 939
    return-void
.end method

.method public removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 961
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "listener":Lcom/google/android/material/slider/BaseOnSliderTouchListener;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->touchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 962
    return-void
.end method

.method protected setActiveThumbIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 914
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->activeThumbIdx:I

    .line 915
    return-void
.end method

.method setCustomThumbDrawable(I)V
    .locals 1
    .param p1, "drawableResId"    # I

    .line 819
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    return-void
.end method

.method setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 833
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->initializeCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 834
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 835
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 836
    return-void
.end method

.method varargs setCustomThumbDrawablesForValues([I)V
    .locals 4
    .param p1, "customThumbDrawableResIds"    # [I

    .line 851
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 852
    .local v0, "customThumbDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V

    .line 856
    return-void
.end method

.method varargs setCustomThumbDrawablesForValues([Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "customThumbDrawables"    # [Landroid/graphics/drawable/Drawable;

    .line 871
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    .line 873
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 874
    .local v2, "originalDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/android/material/slider/BaseSlider;->initializeCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    .end local v2    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 877
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1527
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1530
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/slider/BaseSlider;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1531
    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .line 905
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 908
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->focusedThumbIdx:I

    .line 909
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->accessibilityHelper:Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->requestKeyboardFocusForVirtualView(I)Z

    .line 910
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 911
    return-void

    .line 906
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHaloRadius(I)V
    .locals 3
    .param p1, "radius"    # I

    .line 1170
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    if-ne p1, v0, :cond_0

    .line 1171
    return-void

    .line 1174
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    .line 1175
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1176
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1177
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->haloRadius:I

    invoke-static {v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V

    .line 1178
    return-void

    .line 1181
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1182
    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 1191
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    .line 1192
    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "haloColor"    # Landroid/content/res/ColorStateList;

    .line 1274
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    return-void

    .line 1278
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->haloColor:Landroid/content/res/ColorStateList;

    .line 1279
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1280
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->shouldDrawCompatHalo()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1281
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1282
    return-void

    .line 1285
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1286
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider;->haloPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1287
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1288
    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1
    .param p1, "labelBehavior"    # I

    .line 1213
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    if-eq v0, p1, :cond_0

    .line 1214
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->labelBehavior:I

    .line 1215
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->requestLayout()V

    .line 1217
    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .locals 0
    .param p1, "formatter"    # Lcom/google/android/material/slider/LabelFormatter;

    .line 984
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->formatter:Lcom/google/android/material/slider/LabelFormatter;

    .line 985
    return-void
.end method

.method protected setSeparationUnit(I)V
    .locals 1
    .param p1, "separationUnit"    # I

    .line 2003
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->separationUnit:I

    .line 2004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 2005
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2006
    return-void
.end method

.method public setStepSize(F)V
    .locals 5
    .param p1, "stepSize"    # F

    .line 797
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 801
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 802
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->stepSize:F

    .line 803
    iput-boolean v1, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 804
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 806
    :cond_0
    return-void

    .line 798
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 799
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget v3, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 1005
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 1006
    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1
    .param p1, "elevation"    # I

    .line 1015
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    .line 1016
    return-void
.end method

.method public setThumbRadius(I)V
    .locals 4
    .param p1, "radius"    # I

    .line 1037
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    if-ne p1, v0, :cond_0

    .line 1038
    return-void

    .line 1041
    :cond_0
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    .line 1042
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->maybeIncreaseTrackSidePadding()V

    .line 1044
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 1045
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCorners(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 1044
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 1046
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v1, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v3, v3, v2, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 1048
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1049
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->customThumbDrawablesForValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 1052
    .local v1, "customDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->adjustCustomThumbDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    .end local v1    # "customDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1055
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1056
    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 1065
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    .line 1066
    return-void
.end method

.method public setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbStrokeColor"    # Landroid/content/res/ColorStateList;

    .line 1078
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1080
    return-void
.end method

.method public setThumbStrokeColorResource(I)V
    .locals 1
    .param p1, "thumbStrokeColorResourceId"    # I

    .line 1092
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-eqz p1, :cond_0

    .line 1093
    nop

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1093
    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 1096
    :cond_0
    return-void
.end method

.method public setThumbStrokeWidth(F)V
    .locals 1
    .param p1, "thumbStrokeWidth"    # F

    .line 1120
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStrokeWidth(F)V

    .line 1121
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1122
    return-void
.end method

.method public setThumbStrokeWidthResource(I)V
    .locals 1
    .param p1, "thumbStrokeWidthResourceId"    # I

    .line 1134
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    if-eqz p1, :cond_0

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    .line 1137
    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;

    .line 1308
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    return-void

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->defaultThumbDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1314
    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;

    .line 1372
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    return-void

    .line 1375
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorActive:Landroid/content/res/ColorStateList;

    .line 1376
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTicksPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1377
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1378
    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;

    .line 1401
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    return-void

    .line 1404
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickColorInactive:Landroid/content/res/ColorStateList;

    .line 1405
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTicksPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1406
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1407
    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tickColor"    # Landroid/content/res/ColorStateList;

    .line 1347
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1348
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1349
    return-void
.end method

.method public setTickVisible(Z)V
    .locals 1
    .param p1, "tickVisible"    # Z

    .line 1426
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    if-eq v0, p1, :cond_0

    .line 1427
    iput-boolean p1, p0, Lcom/google/android/material/slider/BaseSlider;->tickVisible:Z

    .line 1428
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1430
    :cond_0
    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;

    .line 1488
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    return-void

    .line 1491
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorActive:Landroid/content/res/ColorStateList;

    .line 1492
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->activeTrackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1493
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1494
    return-void
.end method

.method public setTrackHeight(I)V
    .locals 1
    .param p1, "trackHeight"    # I

    .line 1249
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    if-eq v0, p1, :cond_0

    .line 1250
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackHeight:I

    .line 1251
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidateTrack()V

    .line 1252
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 1254
    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;

    .line 1517
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    return-void

    .line 1520
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider;->trackColorInactive:Landroid/content/res/ColorStateList;

    .line 1521
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider;->inactiveTrackPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->getColorForState(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1522
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->invalidate()V

    .line 1523
    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "trackColor"    # Landroid/content/res/ColorStateList;

    .line 1463
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1464
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1465
    return-void
.end method

.method public setValueFrom(F)V
    .locals 1
    .param p1, "valueFrom"    # F

    .line 634
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueFrom:F

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 636
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 637
    return-void
.end method

.method public setValueTo(F)V
    .locals 1
    .param p1, "valueTo"    # F

    .line 660
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iput p1, p0, Lcom/google/android/material/slider/BaseSlider;->valueTo:F

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/slider/BaseSlider;->dirtyConfig:Z

    .line 662
    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 663
    return-void
.end method

.method setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 708
    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Float;

    .line 686
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 688
    invoke-direct {p0, v0}, Lcom/google/android/material/slider/BaseSlider;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 689
    return-void
.end method

.method updateBoundsForVirturalViewId(ILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "virtualViewBounds"    # Landroid/graphics/Rect;

    .line 2595
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<TS;TL;TT;>;"
    iget v0, p0, Lcom/google/android/material/slider/BaseSlider;->trackSidePadding:I

    invoke-virtual {p0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/slider/BaseSlider;->normalizeValue(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->trackWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 2596
    .local v0, "x":I
    invoke-direct {p0}, Lcom/google/android/material/slider/BaseSlider;->calculateTop()I

    move-result v1

    .line 2598
    .local v1, "y":I
    iget v2, p0, Lcom/google/android/material/slider/BaseSlider;->thumbRadius:I

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2599
    return-void
.end method
