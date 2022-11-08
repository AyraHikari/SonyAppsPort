.class public Lcom/android/launcher3/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiScalePropertyFactory<",
            "Lcom/android/launcher3/Hotseat;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_HEIGHT:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/ViewGroup$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAYOUT_WIDTH:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/ViewGroup$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_INDEX_REVEAL_ANIM:I = 0x4

.field public static final SCALE_INDEX_UNFOLD_ANIMATION:I = 0x1

.field public static final SCALE_INDEX_UNLOCK_ANIMATION:I = 0x2

.field public static final SCALE_INDEX_WORKSPACE_STATE:I = 0x3

.field public static final SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPRING_LOADED_EXIT_DELAY:I = 0x1f4

.field public static final SUCCESS_TRANSITION_PROGRESS:F = 0.5f

.field public static final TABLET_BOTTOM_SHEET_SUCCESS_TRANSITION_PROGRESS:F = 0.3f

.field public static final VIEW_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_TRANSLATE_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiScalePropertyFactory<",
            "Lcom/android/launcher3/Workspace<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    .line 56
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$2;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 75
    new-instance v0, Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const-string v1, "workspace_scale_property"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 79
    new-instance v0, Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const-string v1, "hotseat_scale_property"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 92
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$3;

    const-string v1, "width"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    .line 105
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$4;

    const-string v1, "height"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/IntProperty;

    .line 119
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    instance-of v0, v0, Landroid/util/FloatProperty;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$5;

    const-string v1, "translateX"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$5;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    .line 133
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    instance-of v0, v0, Landroid/util/FloatProperty;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_1

    .line 134
    :cond_1
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$6;

    const-string v1, "translateY"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$6;-><init>(Ljava/lang/String;)V

    :goto_1
    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    .line 147
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    instance-of v0, v0, Landroid/util/FloatProperty;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_2

    .line 148
    :cond_2
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$7;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$7;-><init>(Ljava/lang/String;)V

    :goto_2
    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    .line 160
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$8;

    const-string v1, "backgroundColor"

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockedFlingDurationFactor(F)I
    .locals 3
    .param p0, "velocity"    # F

    .line 89
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAnimUtils$9;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
