.class Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
.super Ljava/lang/Object;
.source "AnimatorControllerWithResistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/AnimatorControllerWithResistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentsParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SCA",
        "LE:Ljava/lang/Object;",
        "TRANS",
        "LATION:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final dp:Lcom/android/launcher3/DeviceProfile;

.field public final recentsOrientedState:Lcom/android/quickstep/util/RecentsOrientedState;

.field public resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

.field public resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public final scaleProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TSCA",
            "LE;",
            ">;"
        }
    .end annotation
.end field

.field public final scaleTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSCA",
            "LE;"
        }
    .end annotation
.end field

.field public startScale:F

.field public startTranslation:F

.field public final translationProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TTRANS",
            "LATION;",
            ">;"
        }
    .end annotation
.end field

.field public final translationTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRANS",
            "LATION;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$msetResistAnim(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->setResistAnim(Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetResistanceParams(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->setResistanceParams(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetStartScale(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->setStartScale(F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recentsOrientedState"    # Lcom/android/quickstep/util/RecentsOrientedState;
    .param p3, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            "Lcom/android/launcher3/DeviceProfile;",
            "TSCA",
            "LE;",
            "Landroid/util/FloatProperty<",
            "TSCA",
            "LE;",
            ">;TTRANS",
            "LATION;",
            "Landroid/util/FloatProperty<",
            "TTRANS",
            "LATION;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;, "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<TSCALE;TTRANSLATION;>;"
    .local p4, "scaleTarget":Ljava/lang/Object;, "TSCALE;"
    .local p5, "scaleProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TSCALE;>;"
    .local p6, "translationTarget":Ljava/lang/Object;, "TTRANSLATION;"
    .local p7, "translationProperty":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TTRANSLATION;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

    .line 245
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startTranslation:F

    .line 251
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->context:Landroid/content/Context;

    .line 252
    iput-object p2, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->recentsOrientedState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 253
    iput-object p3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->dp:Lcom/android/launcher3/DeviceProfile;

    .line 254
    iput-object p4, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->scaleTarget:Ljava/lang/Object;

    .line 255
    iput-object p5, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->scaleProperty:Landroid/util/FloatProperty;

    .line 256
    iput-object p6, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->translationTarget:Ljava/lang/Object;

    .line 257
    iput-object p7, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->translationProperty:Landroid/util/FloatProperty;

    .line 258
    iget-boolean v0, p3, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    goto :goto_0

    .line 261
    :cond_0
    sget-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    iput-object v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 263
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;-><init>(Landroid/content/Context;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/DeviceProfile;Ljava/lang/Object;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/util/FloatProperty;)V

    return-void
.end method

.method private setResistAnim(Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0
    .param p1, "resistAnim"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 266
    .local p0, "this":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;, "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<TSCALE;TTRANSLATION;>;"
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistAnim:Lcom/android/launcher3/anim/PendingAnimation;

    .line 267
    return-object p0
.end method

.method private setResistanceParams(Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0
    .param p1, "resistanceParams"    # Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 271
    .local p0, "this":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;, "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<TSCALE;TTRANSLATION;>;"
    iput-object p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->resistanceParams:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    .line 272
    return-object p0
.end method

.method private setStartScale(F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0
    .param p1, "startScale"    # F

    .line 276
    .local p0, "this":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;, "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<TSCALE;TTRANSLATION;>;"
    iput p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startScale:F

    .line 277
    return-object p0
.end method

.method private setStartTranslation(F)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;
    .locals 0
    .param p1, "startTranslation"    # F

    .line 281
    .local p0, "this":Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;, "Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams<TSCALE;TTRANSLATION;>;"
    iput p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsParams;->startTranslation:F

    .line 282
    return-object p0
.end method
