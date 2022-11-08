.class public Landroidx/constraintlayout/motion/widget/KeyAttributes;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttribute"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mVisibility:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    .line 44
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 50
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 52
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 53
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mType:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    return v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    return v0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    return v0
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    return v0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    return v0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    return v0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    return v0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    return v0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    return v0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    return p1
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    return v0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    return p1
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 38
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    return v0
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyAttributes;
    .param p1, "x1"    # F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    return p1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "splines":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/motion/widget/SplineSet;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 176
    .local v2, "splineSet":Landroidx/constraintlayout/motion/widget/SplineSet;
    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "ckey":Ljava/lang/String;
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 179
    .local v4, "cvalue":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v4, :cond_0

    .line 180
    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    goto :goto_0

    .line 184
    .end local v3    # "ckey":Ljava/lang/String;
    .end local v4    # "cvalue":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x5

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_4
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_5
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_6
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0xb

    goto :goto_2

    :sswitch_7
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0xa

    goto :goto_2

    :sswitch_8
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0x9

    goto :goto_2

    :sswitch_9
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_a
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_b
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :goto_1
    move v5, v3

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNKNOWN addValues \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyAttributes"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 242
    :pswitch_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 243
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_3

    .line 237
    :pswitch_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_3

    .line 232
    :pswitch_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 233
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_3

    .line 227
    :pswitch_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 228
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_3

    .line 221
    :pswitch_4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 222
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto/16 :goto_3

    .line 216
    :pswitch_5
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 217
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto :goto_3

    .line 211
    :pswitch_6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto :goto_3

    .line 206
    :pswitch_7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 207
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto :goto_3

    .line 201
    :pswitch_8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto :goto_3

    .line 196
    :pswitch_9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 197
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto :goto_3

    .line 191
    :pswitch_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    goto :goto_3

    .line 186
    :pswitch_b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 187
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/SplineSet;->setPoint(IF)V

    .line 249
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "splineSet":Landroidx/constraintlayout/motion/widget/SplineSet;
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 250
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_b
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_9
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_6
        -0x3621dfb2 -> :sswitch_5
        -0x3621dfb1 -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "attributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 100
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 103
    const-string v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    .line 106
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 109
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 112
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    .line 115
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 122
    :cond_c
    return-void
.end method

.method getCurveFit()I
    .locals 1

    .line 75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyAttributes;Landroid/content/res/TypedArray;)V

    .line 67
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 141
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 144
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 147
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    .line 150
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 153
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    .line 156
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    .line 159
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c

    .line 162
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 165
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 170
    :cond_d
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_b
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_c
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_d
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_e
    const-string v0, "motionProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 298
    :pswitch_0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    goto :goto_2

    .line 295
    :pswitch_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    .line 296
    goto :goto_2

    .line 292
    :pswitch_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    .line 293
    goto :goto_2

    .line 289
    :pswitch_3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    .line 290
    goto :goto_2

    .line 286
    :pswitch_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    .line 287
    goto :goto_2

    .line 283
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    .line 284
    goto :goto_2

    .line 280
    :pswitch_6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    .line 281
    goto :goto_2

    .line 277
    :pswitch_7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    .line 278
    goto :goto_2

    .line 274
    :pswitch_8
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    .line 275
    goto :goto_2

    .line 271
    :pswitch_9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    .line 272
    goto :goto_2

    .line 268
    :pswitch_a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    .line 269
    goto :goto_2

    .line 265
    :pswitch_b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    .line 266
    goto :goto_2

    .line 262
    :pswitch_c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    .line 263
    goto :goto_2

    .line 259
    :pswitch_d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    .line 260
    goto :goto_2

    .line 256
    :pswitch_e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    .line 257
    nop

    .line 301
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72062ffd -> :sswitch_e
        -0x6c0d7d20 -> :sswitch_d
        -0x4a771f66 -> :sswitch_c
        -0x4a771f65 -> :sswitch_b
        -0x490b9c39 -> :sswitch_a
        -0x490b9c38 -> :sswitch_9
        -0x3621dfb2 -> :sswitch_8
        -0x3621dfb1 -> :sswitch_7
        -0x266f082 -> :sswitch_6
        -0x42d1a3 -> :sswitch_5
        0x2382115 -> :sswitch_4
        0x589b15e -> :sswitch_3
        0x2283b8a2 -> :sswitch_2
        0x4e897cd6 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
