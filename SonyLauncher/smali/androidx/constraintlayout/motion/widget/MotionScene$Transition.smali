.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
    }
.end annotation


# static fields
.field public static final AUTO_ANIMATE_TO_END:I = 0x4

.field public static final AUTO_ANIMATE_TO_START:I = 0x3

.field public static final AUTO_JUMP_TO_END:I = 0x2

.field public static final AUTO_JUMP_TO_START:I = 0x1

.field public static final AUTO_NONE:I


# instance fields
.field private mAutoTransition:I

.field private mConstraintSetEnd:I

.field private mConstraintSetStart:I

.field private mDefaultInterpolator:I

.field private mDefaultInterpolatorID:I

.field private mDefaultInterpolatorString:Ljava/lang/String;

.field private mDisable:Z

.field private mDuration:I

.field private mId:I

.field private mIsAbstract:Z

.field private mKeyFramesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/KeyFrames;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutDuringTransition:I

.field private final mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field private mOnClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation
.end field

.field private mPathMotionArc:I

.field private mStagger:F

.field private mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "motionScene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p3, "constraintSetStartId"    # I
    .param p4, "constraintSetEndId"    # I

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 416
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 417
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 418
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 419
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 420
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 421
    const/16 v3, 0x190

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 422
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 425
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 427
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 435
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 734
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    .line 735
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 736
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 737
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 738
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$900(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 739
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1000(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 740
    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "motionScene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 416
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 417
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 418
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 419
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 420
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 421
    const/16 v3, 0x190

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 422
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 425
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 427
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 435
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 743
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$900(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 744
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1000(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 745
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 746
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->fillFromAttributeList(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 747
    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 4
    .param p1, "motionScene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p2, "global"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 416
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 417
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 418
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 419
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 420
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 421
    const/16 v3, 0x190

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 422
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 425
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    .line 427
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    .line 433
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 434
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 435
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 707
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 708
    if-eqz p2, :cond_0

    .line 709
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 710
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 711
    iget-object v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 712
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 713
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 714
    iget-object v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 715
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 716
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 718
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    return v0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p1, "x1"    # I

    .line 413
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    return v0
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p1, "x1"    # I

    .line 413
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    return v0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    return v0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    return v0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    return v0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)F
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/TouchResponse;)Landroidx/constraintlayout/motion/widget/TouchResponse;
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .param p1, "x1"    # Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 413
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    return v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    return v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    return v0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 413
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    return-object v0
.end method

.method private fill(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "motionScene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .line 756
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 757
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v1, v0, :cond_10

    .line 758
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 759
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetEnd:I

    const-string v6, "layout"

    if-ne v4, v5, :cond_1

    .line 760
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    .line 761
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 764
    .local v3, "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v3, p2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 765
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1100(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 771
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    :cond_0
    goto/16 :goto_2

    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetStart:I

    if-ne v4, v5, :cond_3

    .line 772
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    .line 773
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 774
    .restart local v2    # "type":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 775
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 776
    .restart local v3    # "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v3, p2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 777
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$1100(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 779
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    :cond_2
    goto/16 :goto_2

    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Transition_motionInterpolator:I

    if-ne v4, v5, :cond_8

    .line 780
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 782
    .local v5, "type":Landroid/util/TypedValue;
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v2, :cond_4

    .line 783
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 784
    if-eq v2, v3, :cond_7

    .line 785
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_1

    .line 787
    :cond_4
    iget v2, v5, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_6

    .line 788
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 789
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 790
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 791
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_1

    .line 793
    :cond_5
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    goto :goto_1

    .line 796
    :cond_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 799
    .end local v5    # "type":Landroid/util/TypedValue;
    :cond_7
    :goto_1
    goto :goto_2

    :cond_8
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_duration:I

    if-ne v4, v2, :cond_9

    .line 800
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    goto :goto_2

    .line 801
    :cond_9
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_staggered:I

    if-ne v4, v2, :cond_a

    .line 802
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    goto :goto_2

    .line 803
    :cond_a
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_autoTransition:I

    if-ne v4, v2, :cond_b

    .line 804
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I

    goto :goto_2

    .line 805
    :cond_b
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_android_id:I

    if-ne v4, v2, :cond_c

    .line 806
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I

    goto :goto_2

    .line 807
    :cond_c
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_transitionDisable:I

    if-ne v4, v2, :cond_d

    .line 808
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    goto :goto_2

    .line 809
    :cond_d
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_pathMotionArc:I

    if-ne v4, v2, :cond_e

    .line 810
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    goto :goto_2

    .line 811
    :cond_e
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Transition_layoutDuringTransition:I

    if-ne v4, v2, :cond_f

    .line 812
    const/4 v2, 0x0

    invoke-virtual {p3, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    .line 757
    .end local v4    # "attr":I
    :cond_f
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 815
    .end local v1    # "i":I
    :cond_10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    if-ne v1, v3, :cond_11

    .line 816
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z

    .line 818
    :cond_11
    return-void
.end method

.method private fillFromAttributeList(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "motionScene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 750
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 751
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->fill(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 752
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 753
    return-void
.end method


# virtual methods
.method public addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 442
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-direct {v1, p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public debugString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 570
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 571
    const-string v0, "null"

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    if-ne v2, v1, :cond_1

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 578
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_1
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 478
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    return v0
.end method

.method public getEndConstraintSetId()I
    .locals 1

    .line 451
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/KeyFrames;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayoutDuringTransition()I
    .locals 1

    .line 438
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mLayoutDuringTransition:I

    return v0
.end method

.method public getOnClickList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPathMotionArc()I
    .locals 1

    .line 540
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    return v0
.end method

.method public getStagger()F
    .locals 1

    .line 487
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    return v0
.end method

.method public getStartConstraintSetId()I
    .locals 1

    .line 460
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I

    return v0
.end method

.method public getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;
    .locals 1

    .line 509
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 469
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 470
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 558
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z

    .line 559
    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0
    .param p1, "arcMode"    # I

    .line 530
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 531
    return-void
.end method

.method public setStagger(F)V
    .locals 0
    .param p1, "stagger"    # F

    .line 520
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F

    .line 521
    return-void
.end method
