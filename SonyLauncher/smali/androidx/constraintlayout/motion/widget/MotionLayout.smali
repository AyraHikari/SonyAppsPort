.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String; = "MotionLayout"

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field private mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field private mRegionView:Landroid/view/View;

.field mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field mScrollTarget:Landroid/view/View;

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 939
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 864
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 865
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 866
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 867
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 868
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 869
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 871
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 873
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 874
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 875
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 876
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 878
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 880
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 881
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    .line 888
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 892
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 893
    new-instance v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 894
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 898
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    .line 905
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 911
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 913
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 914
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 915
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 916
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 917
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 918
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 919
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 920
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 921
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 928
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 936
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 2067
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2896
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3098
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3099
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 940
    invoke-direct {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 941
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 944
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 864
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 865
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 866
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 867
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 868
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 869
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 871
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 873
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 874
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 875
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 876
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 878
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 880
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 881
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    .line 888
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 892
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 893
    new-instance v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 894
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 898
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    .line 905
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 911
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 913
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 914
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 915
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 916
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 917
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 918
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 919
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 920
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 921
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 928
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 936
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 2067
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2896
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3098
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3099
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 945
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 946
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 949
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 864
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 865
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 866
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 867
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 868
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 869
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 871
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 873
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 874
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 875
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 876
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 878
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 880
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 881
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    .line 888
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 892
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 893
    new-instance v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    .line 894
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    .line 898
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    .line 905
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 911
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 913
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 914
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 915
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 916
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 917
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 918
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 919
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 920
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 921
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 928
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    .line 936
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCache;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 2067
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    .line 2896
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 3098
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    .line 3099
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    .line 950
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    .line 951
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 846
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 846
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 846
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 846
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    return-void
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .line 846
    invoke-virtual/range {p0 .. p6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p4, "x4"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .param p5, "x5"    # Landroid/util/SparseArray;

    .line 846
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    return v0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    return v0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 846
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setupMotionViews()V

    return-void
.end method

.method private checkStructure()V
    .locals 12

    .line 2996
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const-string v1, "MotionLayout"

    if-nez v0, :cond_0

    .line 2997
    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    return-void

    .line 3001
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 3002
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3003
    .local v0, "startToEnd":Landroid/util/SparseIntArray;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 3004
    .local v2, "endToStart":Landroid/util/SparseIntArray;
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 3005
    .local v4, "definedTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne v4, v5, :cond_1

    .line 3006
    const-string v5, "CHECK: CURRENT"

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_1
    invoke-direct {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 3009
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v5

    .line 3010
    .local v5, "startId":I
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v6

    .line 3011
    .local v6, "endId":I
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 3012
    .local v7, "startString":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3013
    .local v8, "endString":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    const-string v10, "->"

    if-ne v9, v6, :cond_2

    .line 3015
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK: two transitions with the same start and end "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :cond_2
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    if-ne v9, v5, :cond_3

    .line 3020
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_3
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3024
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3025
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v9, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v9

    if-nez v9, :cond_4

    .line 3026
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " no such constraintSetStart "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :cond_4
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v9, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v9

    if-nez v9, :cond_5

    .line 3030
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " no such constraintSetEnd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    .end local v4    # "definedTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .end local v5    # "startId":I
    .end local v6    # "endId":I
    .end local v7    # "startString":Ljava/lang/String;
    .end local v8    # "endString":Ljava/lang/String;
    :cond_5
    goto/16 :goto_0

    .line 3033
    :cond_6
    return-void
.end method

.method private checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 12
    .param p1, "csetId"    # I
    .param p2, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 3036
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3037
    .local v0, "setName":Ljava/lang/String;
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    .line 3038
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    const-string v4, "CHECK: "

    const-string v5, "MotionLayout"

    if-ge v2, v1, :cond_2

    .line 3039
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3040
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    .line 3041
    .local v7, "id":I
    if-ne v7, v3, :cond_0

    .line 3042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3043
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " does not!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3042
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :cond_0
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    .line 3046
    .local v3, "c":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    if-nez v3, :cond_1

    .line 3047
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " NO CONSTRAINTS for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    .end local v3    # "c":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "id":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3050
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v2

    .line 3051
    .local v2, "ids":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_6

    .line 3052
    aget v7, v2, v6

    .line 3053
    .restart local v7    # "id":I
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 3054
    .local v8, "idString":Ljava/lang/String;
    aget v9, v2, v6

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_3

    .line 3055
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " NO View matches id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_3
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    move-result v9

    const-string v10, ") no LAYOUT_HEIGHT"

    const-string v11, "("

    if-ne v9, v3, :cond_4

    .line 3058
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    :cond_4
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    move-result v9

    if-ne v9, v3, :cond_5

    .line 3061
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    .end local v7    # "id":I
    .end local v8    # "idString":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3064
    .end local v6    # "i":I
    :cond_6
    return-void
.end method

.method private checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 3
    .param p1, "transition"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 3067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK: transition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->debugString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK: transition.setDuration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 3070
    const-string v0, "CHECK: start and end constraint set should not be the same!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_0
    return-void
.end method

.method private computeCurrentPositions()V
    .locals 4

    .line 1540
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v0

    .line 1541
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1542
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1543
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1544
    .local v3, "frame":Landroidx/constraintlayout/motion/widget/MotionController;
    if-nez v3, :cond_0

    .line 1545
    goto :goto_1

    .line 1547
    :cond_0
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartCurrentState(Landroid/view/View;)V

    .line 1541
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "frame":Landroidx/constraintlayout/motion/widget/MotionController;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private debugPos()V
    .locals 6

    .line 2605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2606
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2607
    .local v1, "child":Landroid/view/View;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2608
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-static {v4, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2609
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2610
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2607
    const-string v3, "MotionLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    .end local v1    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2612
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private evaluateLayout()V
    .locals 20

    .line 2678
    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2679
    .local v1, "dir":F
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    .line 2681
    .local v2, "currentTime":J
    const/4 v4, 0x0

    .line 2682
    .local v4, "deltaPos":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v6, v5, Landroidx/constraintlayout/motion/utils/StopLogic;

    const v7, 0x3089705f    # 1.0E-9f

    if-nez v6, :cond_0

    .line 2683
    iget-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v8, v2, v8

    long-to-float v6, v8

    mul-float/2addr v6, v1

    mul-float/2addr v6, v7

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float v4, v6, v8

    .line 2685
    :cond_0
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v6, v4

    .line 2687
    .local v6, "position":F
    const/4 v8, 0x0

    .line 2688
    .local v8, "done":Z
    iget-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v9, :cond_1

    .line 2689
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2692
    :cond_1
    const/4 v9, 0x0

    cmpl-float v10, v1, v9

    if-lez v10, :cond_2

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v10, v6, v10

    if-gez v10, :cond_3

    :cond_2
    cmpg-float v10, v1, v9

    if-gtz v10, :cond_4

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v10, v6, v10

    if-gtz v10, :cond_4

    .line 2694
    :cond_3
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2695
    const/4 v8, 0x1

    .line 2697
    :cond_4
    if-eqz v5, :cond_6

    if-nez v8, :cond_6

    .line 2698
    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v10, :cond_5

    .line 2699
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long v10, v2, v10

    long-to-float v10, v10

    mul-float/2addr v10, v7

    .line 2700
    .local v10, "time":F
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 2701
    .end local v10    # "time":F
    goto :goto_0

    .line 2702
    :cond_5
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 2705
    :cond_6
    :goto_0
    cmpl-float v5, v1, v9

    if-lez v5, :cond_7

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v5, v6, v5

    if-gez v5, :cond_8

    :cond_7
    cmpg-float v5, v1, v9

    if-gtz v5, :cond_9

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_9

    .line 2707
    :cond_8
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2709
    :cond_9
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 2710
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v5

    .line 2711
    .local v5, "n":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v15

    .line 2712
    .local v15, "time":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_b

    .line 2713
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2714
    .local v14, "child":Landroid/view/View;
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 2715
    .local v17, "frame":Landroidx/constraintlayout/motion/widget/MotionController;
    if-eqz v17, :cond_a

    .line 2716
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    move-object/from16 v9, v17

    move-object v10, v14

    move v11, v6

    move-object/from16 v18, v12

    move-wide v12, v15

    move-object/from16 v19, v14

    .end local v14    # "child":Landroid/view/View;
    .local v19, "child":Landroid/view/View;
    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    goto :goto_2

    .line 2715
    .end local v19    # "child":Landroid/view/View;
    .restart local v14    # "child":Landroid/view/View;
    :cond_a
    move-object/from16 v19, v14

    .line 2712
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "frame":Landroidx/constraintlayout/motion/widget/MotionController;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2719
    .end local v7    # "i":I
    :cond_b
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v7, :cond_c

    .line 2720
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2722
    :cond_c
    return-void
.end method

.method private fireTransitionChange()V
    .locals 6

    .line 3410
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3411
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 3412
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 3413
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_1

    .line 3414
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-interface {v0, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 3416
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3417
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3418
    .local v3, "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-interface {v3, p0, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 3419
    .end local v3    # "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    goto :goto_0

    .line 3421
    :cond_2
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 3423
    :cond_3
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 3424
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    .line 3425
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v2, :cond_4

    .line 3426
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-interface {v2, p0, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    .line 3428
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 3429
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3430
    .local v2, "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    .line 3431
    .end local v2    # "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    goto :goto_1

    .line 3433
    :cond_5
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 3436
    :cond_6
    return-void
.end method

.method private fireTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 2
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "mBeginState"    # I
    .param p3, "mEndState"    # I

    .line 3739
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    .line 3740
    invoke-interface {v0, p0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 3742
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3743
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3744
    .local v1, "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    invoke-interface {v1, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 3745
    .end local v1    # "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    goto :goto_0

    .line 3747
    :cond_1
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 3111
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3112
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3113
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3114
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3115
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3116
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p2

    invoke-direct {p0, v5, v6, v4, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3117
    return v1

    .line 3114
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3121
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3123
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 3124
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3125
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3126
    return v1

    .line 3130
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3131
    return v1

    .line 3135
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2935
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 2936
    const/4 v0, -0x1

    if-eqz p1, :cond_9

    .line 2937
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    .line 2938
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2939
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 2941
    .local v2, "N":I
    const/4 v3, 0x1

    .line 2942
    .local v3, "apply":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_7

    .line 2943
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 2944
    .local v5, "attr":I
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v5, v6, :cond_0

    .line 2945
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2946
    .local v6, "n":I
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2947
    .end local v6    # "n":I
    goto :goto_1

    :cond_0
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

    if-ne v5, v6, :cond_1

    .line 2948
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_1

    .line 2949
    :cond_1
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    if-ne v5, v6, :cond_2

    .line 2950
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2951
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    goto :goto_1

    .line 2952
    :cond_2
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v5, v6, :cond_3

    .line 2953
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_1

    .line 2954
    :cond_3
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    const/4 v7, 0x0

    if-ne v5, v6, :cond_5

    .line 2955
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-nez v6, :cond_6

    .line 2956
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    :cond_4
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    goto :goto_1

    .line 2958
    :cond_5
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    if-ne v5, v6, :cond_6

    .line 2959
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 2942
    .end local v5    # "attr":I
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2962
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2963
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v4, :cond_8

    .line 2964
    const-string v4, "MotionLayout"

    const-string v5, "WARNING NO app:layoutDescription tag"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_8
    if-nez v3, :cond_9

    .line 2967
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2970
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    .end local v3    # "apply":Z
    :cond_9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-eqz v1, :cond_a

    .line 2971
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure()V

    .line 2973
    :cond_a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_b

    .line 2974
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2975
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 2979
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 2984
    :cond_b
    return-void
.end method

.method private onNewStateAttachHandlers()V
    .locals 2

    .line 3227
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3228
    return-void

    .line 3230
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3231
    return-void

    .line 3233
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3234
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 3236
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3237
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setupTouch()V

    .line 3239
    :cond_3
    return-void
.end method

.method private processTransitionCompleted()V
    .locals 5

    .line 3459
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3460
    :cond_0
    return-void

    .line 3462
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 3463
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3464
    .local v1, "state":Ljava/lang/Integer;
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v2, :cond_2

    .line 3465
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 3467
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 3468
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3469
    .local v3, "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 3470
    .end local v3    # "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    goto :goto_1

    .line 3472
    .end local v1    # "state":Ljava/lang/Integer;
    :cond_3
    goto :goto_0

    .line 3473
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3474
    return-void
.end method

.method private setupMotionViews()V
    .locals 17

    .line 1289
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v1

    .line 1291
    .local v1, "n":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 1292
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v9

    .line 1295
    .local v9, "layoutWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v10

    .line 1296
    .local v10, "layoutHeight":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->gatPathMotionArc()I

    move-result v11

    .line 1297
    .local v11, "arc":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_1

    .line 1298
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1299
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1300
    .local v4, "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    if-eqz v4, :cond_0

    .line 1301
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->setPathMotionArc(I)V

    .line 1298
    .end local v4    # "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1306
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    move v12, v3

    .local v12, "i":I
    :goto_1
    if-ge v12, v1, :cond_3

    .line 1307
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1308
    .local v13, "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    if-eqz v13, :cond_2

    .line 1309
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, v13}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 1310
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    move-object v3, v13

    move v4, v9

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    .line 1306
    .end local v13    # "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1314
    .end local v12    # "i":I
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v3

    .line 1315
    .local v3, "stagger":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_f

    .line 1316
    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 1317
    .local v2, "flip":Z
    :goto_2
    const/4 v4, 0x0

    .line 1318
    .local v4, "useMotionStagger":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1319
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .local v5, "min":F
    const v6, -0x800001

    .line 1320
    .local v6, "max":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_7

    .line 1321
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1322
    .local v8, "f":Landroidx/constraintlayout/motion/widget/MotionController;
    iget v12, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1323
    const/4 v4, 0x1

    .line 1324
    goto :goto_5

    .line 1326
    :cond_5
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v12

    .line 1327
    .local v12, "x":F
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v13

    .line 1328
    .local v13, "y":F
    if-eqz v2, :cond_6

    sub-float v14, v13, v12

    goto :goto_4

    :cond_6
    add-float v14, v13, v12

    .line 1329
    .local v14, "mdist":F
    :goto_4
    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1330
    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1320
    .end local v8    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "mdist":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1332
    .end local v7    # "i":I
    :cond_7
    :goto_5
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_d

    .line 1333
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 1334
    const v6, -0x800001

    .line 1336
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v1, :cond_9

    .line 1337
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1338
    .local v12, "f":Landroidx/constraintlayout/motion/widget/MotionController;
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1339
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1340
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1336
    .end local v12    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1343
    .end local v8    # "i":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    if-ge v8, v1, :cond_c

    .line 1344
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1345
    .restart local v12    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1347
    sub-float v13, v7, v3

    div-float v13, v7, v13

    iput v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 1348
    if-eqz v2, :cond_a

    .line 1349
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    sub-float v13, v6, v13

    sub-float v14, v6, v5

    div-float/2addr v13, v14

    mul-float/2addr v13, v3

    sub-float v13, v3, v13

    iput v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    goto :goto_8

    .line 1351
    :cond_a
    iget v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    sub-float/2addr v13, v5

    mul-float/2addr v13, v3

    sub-float v14, v6, v5

    div-float/2addr v13, v14

    sub-float v13, v3, v13

    iput v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 1343
    .end local v12    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .end local v8    # "i":I
    :cond_c
    goto :goto_b

    .line 1356
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v1, :cond_f

    .line 1357
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1358
    .restart local v12    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v13

    .line 1359
    .local v13, "x":F
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v14

    .line 1360
    .local v14, "y":F
    if-eqz v2, :cond_e

    sub-float v15, v14, v13

    goto :goto_a

    :cond_e
    add-float v15, v14, v13

    .line 1361
    .local v15, "mdist":F
    :goto_a
    sub-float v16, v7, v3

    div-float v0, v7, v16

    iput v0, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 1362
    sub-float v0, v15, v5

    mul-float/2addr v0, v3

    sub-float v16, v6, v5

    div-float v0, v0, v16

    sub-float v0, v3, v0

    iput v0, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 1356
    .end local v12    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v15    # "mdist":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_9

    .line 1366
    .end local v2    # "flip":Z
    .end local v4    # "useMotionStagger":Z
    .end local v5    # "min":F
    .end local v6    # "max":F
    .end local v8    # "i":I
    :cond_f
    :goto_b
    return-void
.end method

.method private static willJump(FFF)Z
    .locals 7
    .param p0, "velocity"    # F
    .param p1, "position"    # F
    .param p2, "maxAcceleration"    # F

    .line 1451
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    .line 1452
    div-float v0, p0, p2

    .line 1453
    .local v0, "time":F
    mul-float v1, p0, v0

    mul-float v5, p2, v0

    mul-float/2addr v5, v0

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    .line 1454
    .local v1, "pos":F
    add-float v4, p1, v1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 1456
    .end local v0    # "time":F
    .end local v1    # "pos":F
    :cond_1
    neg-float v1, p0

    div-float/2addr v1, p2

    .line 1457
    .local v1, "time":F
    mul-float v5, p0, v1

    mul-float v6, p2, v1

    mul-float/2addr v6, v1

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 1458
    .local v5, "pos":F
    add-float v4, p1, v5

    cmpg-float v0, v4, v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method


# virtual methods
.method public addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3326
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    return-void
.end method

.method animateTo(F)V
    .locals 4
    .param p1, "position"    # F

    .line 1509
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 1510
    return-void

    .line 1513
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v1, :cond_1

    .line 1516
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1519
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    .line 1520
    return-void

    .line 1522
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 1523
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1524
    .local v2, "currentPosition":F
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1525
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 1526
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1527
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1528
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 1529
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 1530
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1531
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 1535
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1536
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 1537
    return-void
.end method

.method disableAutoTransition(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 3708
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3709
    return-void

    .line 3711
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->disableAutoTransition(Z)V

    .line 3712
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2624
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 2631
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2632
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v1, :cond_0

    .line 2633
    return-void

    .line 2638
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 2639
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2640
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 2641
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2642
    .local v3, "currentDrawTime":J
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 2643
    sub-long v5, v3, v5

    .line 2644
    .local v5, "delay":J
    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 2645
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    int-to-float v1, v1

    long-to-float v7, v5

    const v8, 0x3089705f    # 1.0E-9f

    mul-float/2addr v7, v8

    div-float/2addr v1, v7

    .line 2646
    .local v1, "fps":F
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v8, v1, v7

    float-to-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    iput v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    .line 2647
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    .line 2648
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 2650
    .end local v1    # "fps":F
    .end local v5    # "delay":J
    :cond_1
    goto :goto_0

    .line 2651
    :cond_2
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    .line 2653
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2654
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, 0x42280000    # 42.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2655
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v1, v5

    .line 2656
    .local v1, "p":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-static {p0, v7}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2657
    .local v6, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-static {p0, v8}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    const-string v8, "undefined"

    goto :goto_1

    .line 2658
    :cond_3
    invoke-static {p0, v8}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2659
    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2660
    const/high16 v7, 0x41300000    # 11.0f

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1d

    int-to-float v8, v8

    invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2661
    const v7, -0x77ff78

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 2662
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1e

    int-to-float v7, v7

    invoke-virtual {p1, v6, v5, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2666
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "p":F
    .end local v3    # "currentDrawTime":J
    .end local v6    # "str":Ljava/lang/String;
    :cond_4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    if-le v0, v2, :cond_6

    .line 2667
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    if-nez v0, :cond_5

    .line 2668
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    .line 2670
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    .line 2672
    :cond_6
    return-void
.end method

.method public enableTransition(IZ)V
    .locals 5
    .param p1, "transitionID"    # I
    .param p2, "enable"    # Z

    .line 972
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    .line 973
    .local v0, "t":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    if-eqz p2, :cond_0

    .line 974
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnable(Z)V

    .line 975
    return-void

    .line 977
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-ne v0, v1, :cond_2

    .line 978
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    move-result-object v1

    .line 979
    .local v1, "transitions":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/motion/widget/MotionScene$Transition;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 980
    .local v3, "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 981
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iput-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 982
    goto :goto_1

    .line 984
    .end local v3    # "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    :cond_1
    goto :goto_0

    .line 986
    .end local v1    # "transitions":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/motion/widget/MotionScene$Transition;>;"
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnable(Z)V

    .line 988
    return-void
.end method

.method evaluate(Z)V
    .locals 24
    .param p1, "force"    # Z

    .line 2726
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2727
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 2729
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    .line 2730
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2733
    :cond_1
    const/4 v3, 0x0

    .line 2734
    .local v3, "newState":Z
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-nez v6, :cond_2

    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v6, :cond_1d

    if-nez p1, :cond_2

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_1d

    .line 2735
    :cond_2
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 2736
    .local v1, "dir":F
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    .line 2738
    .local v9, "currentTime":J
    const/4 v6, 0x0

    .line 2739
    .local v6, "deltaPos":F
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v11, v11, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    const v12, 0x3089705f    # 1.0E-9f

    if-nez v11, :cond_3

    .line 2740
    iget-wide v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    sub-long v13, v9, v13

    long-to-float v11, v13

    mul-float/2addr v11, v1

    mul-float/2addr v11, v12

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float v6, v11, v13

    .line 2742
    :cond_3
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v11, v6

    .line 2744
    .local v11, "position":F
    const/4 v13, 0x0

    .line 2745
    .local v13, "done":Z
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    if-eqz v14, :cond_4

    .line 2746
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2749
    :cond_4
    cmpl-float v14, v1, v2

    const/4 v15, 0x0

    if-lez v14, :cond_5

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v14, v11, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v1, v2

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v14, v11, v14

    if-gtz v14, :cond_7

    .line 2751
    :cond_6
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2752
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 2753
    const/4 v13, 0x1

    .line 2758
    :cond_7
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 2759
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 2760
    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 2761
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v14, :cond_8

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 2762
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    .line 2763
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    .line 2764
    if-eqz v13, :cond_9

    .line 2765
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    .line 2769
    :cond_9
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v14, :cond_f

    if-nez v13, :cond_f

    .line 2770
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    if-eqz v7, :cond_e

    .line 2771
    iget-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    sub-long v7, v9, v7

    long-to-float v7, v7

    mul-float/2addr v7, v12

    .line 2772
    .local v7, "time":F
    invoke-interface {v14, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 2776
    .end local v11    # "position":F
    .local v8, "position":F
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 2778
    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 2779
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v12, v11, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v12, :cond_d

    .line 2780
    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v11

    .line 2781
    .local v11, "lastVelocity":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v14, 0x38d1b717    # 1.0E-4f

    cmpg-float v12, v12, v14

    if-gtz v12, :cond_a

    .line 2782
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 2784
    :cond_a
    cmpl-float v12, v11, v2

    if-lez v12, :cond_b

    cmpl-float v12, v8, v5

    if-ltz v12, :cond_b

    .line 2785
    move v8, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 2786
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 2788
    :cond_b
    cmpg-float v12, v11, v2

    if-gez v12, :cond_c

    cmpg-float v12, v8, v2

    if-gtz v12, :cond_c

    .line 2789
    move v8, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 2790
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    move v11, v8

    goto :goto_0

    .line 2793
    .end local v7    # "time":F
    .end local v11    # "lastVelocity":F
    :cond_c
    move v11, v8

    goto :goto_0

    .line 2779
    .restart local v7    # "time":F
    :cond_d
    move v11, v8

    .line 2793
    .end local v7    # "time":F
    .end local v8    # "position":F
    .local v11, "position":F
    :goto_0
    goto :goto_1

    .line 2794
    :cond_e
    invoke-interface {v14, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    .line 2797
    :cond_f
    :goto_1
    cmpl-float v7, v1, v2

    if-lez v7, :cond_10

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpl-float v7, v11, v7

    if-gez v7, :cond_11

    :cond_10
    cmpg-float v7, v1, v2

    if-gtz v7, :cond_12

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    cmpg-float v7, v11, v7

    if-gtz v7, :cond_12

    .line 2799
    :cond_11
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 2800
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 2803
    :cond_12
    cmpl-float v7, v11, v5

    if-gez v7, :cond_13

    cmpg-float v7, v11, v2

    if-gtz v7, :cond_14

    .line 2804
    :cond_13
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 2807
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v7

    .line 2808
    .local v7, "n":I
    iput-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 2809
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v14

    .line 2813
    .local v14, "time":J
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    .line 2814
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_16

    .line 2815
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2816
    .local v12, "child":Landroid/view/View;
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 2817
    .local v5, "frame":Landroidx/constraintlayout/motion/widget/MotionController;
    if-eqz v5, :cond_15

    .line 2818
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/motion/widget/KeyCache;

    move-object/from16 v18, v5

    move-object/from16 v19, v12

    move/from16 v20, v11

    move-wide/from16 v21, v14

    move-object/from16 v23, v2

    invoke-virtual/range {v18 .. v23}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v2

    or-int/2addr v2, v4

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    .line 2814
    .end local v5    # "frame":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v12    # "child":Landroid/view/View;
    :cond_15
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    .line 2826
    .end local v8    # "i":I
    :cond_16
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-eqz v2, :cond_17

    .line 2827
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2829
    :cond_17
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    if-eqz v2, :cond_18

    .line 2830
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 2833
    :cond_18
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    if-eqz v2, :cond_19

    .line 2834
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 2837
    :cond_19
    const/4 v2, 0x0

    cmpg-float v4, v11, v2

    if-gtz v4, :cond_1b

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b

    .line 2841
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v4, v2, :cond_1a

    .line 2842
    const/4 v3, 0x1

    .line 2844
    :cond_1a
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2845
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    .line 2846
    .local v2, "set":Landroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2849
    .end local v2    # "set":Landroidx/constraintlayout/widget/ConstraintSet;
    :cond_1b
    float-to-double v4, v11

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v4, v16

    if-ltz v2, :cond_1d

    .line 2853
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v2, v4, :cond_1c

    .line 2854
    const/4 v2, 0x1

    move v3, v2

    .line 2856
    :cond_1c
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2857
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    .line 2858
    .restart local v2    # "set":Landroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2861
    .end local v1    # "dir":F
    .end local v2    # "set":Landroidx/constraintlayout/widget/ConstraintSet;
    .end local v6    # "deltaPos":F
    .end local v7    # "n":I
    .end local v9    # "currentTime":J
    .end local v11    # "position":F
    .end local v13    # "done":Z
    .end local v14    # "time":J
    :cond_1d
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1f

    .line 2862
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-eq v2, v4, :cond_1e

    .line 2863
    const/4 v3, 0x1

    .line 2865
    :cond_1e
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_3

    .line 2866
    :cond_1f
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_21

    .line 2867
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-eq v2, v4, :cond_20

    .line 2868
    const/4 v3, 0x1

    .line 2870
    :cond_20
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 2873
    :cond_21
    :goto_3
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    if-eqz v2, :cond_23

    .line 2874
    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_22

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v2, v4, :cond_22

    .line 2875
    const/4 v3, 0x1

    .line 2877
    :cond_22
    float-to-double v1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v4

    if-ltz v1, :cond_23

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_23

    .line 2878
    const/4 v3, 0x1

    .line 2882
    :cond_23
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    or-int/2addr v1, v3

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2883
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_24

    .line 2884
    if-eqz v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInLayout()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2885
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2888
    :cond_24
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 2889
    if-nez v3, :cond_25

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    if-eqz v1, :cond_26

    .line 2890
    :cond_25
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    .line 2891
    if-eqz v3, :cond_26

    .line 2892
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    .line 2894
    :cond_26
    return-void
.end method

.method protected fireTransitionCompleted()V
    .locals 4

    .line 3444
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3445
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3446
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    .line 3447
    const/4 v0, -0x1

    .line 3448
    .local v0, "lastState":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3449
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3451
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 3452
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3456
    .end local v0    # "lastState":I
    :cond_2
    return-void
.end method

.method public fireTrigger(IZF)V
    .locals 2
    .param p1, "triggerId"    # I
    .param p2, "positive"    # Z
    .param p3, "progress"    # F

    .line 3399
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    if-eqz v0, :cond_0

    .line 3400
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    .line 3402
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3403
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3404
    .local v1, "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    .line 3405
    .end local v1    # "listeners":Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;
    goto :goto_0

    .line 3407
    :cond_1
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
    .locals 6
    .param p1, "mTouchAnchorId"    # I
    .param p2, "pos"    # F
    .param p3, "locationX"    # F
    .param p4, "locationY"    # F
    .param p5, "mAnchorDpDt"    # [F

    .line 3274
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 3278
    .local v0, "f":Landroidx/constraintlayout/motion/widget/MotionController;
    if-eqz v0, :cond_1

    .line 3279
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 3280
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    .line 3281
    .local v1, "y":F
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    sub-float v3, p2, v3

    .line 3282
    .local v3, "deltaPos":F
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    sub-float v4, v1, v4

    .line 3283
    .local v4, "deltaY":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    div-float v5, v4, v3

    goto :goto_0

    :cond_0
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 3288
    .local v5, "dydp":F
    :goto_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    .line 3289
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    .line 3290
    .end local v1    # "y":F
    .end local v3    # "deltaPos":F
    .end local v4    # "deltaY":F
    .end local v5    # "dydp":F
    goto :goto_2

    .line 3291
    :cond_1
    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 3292
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 3293
    .local v1, "idName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING could not find view id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    .end local v1    # "idName":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method public getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1
    .param p1, "id"    # I

    .line 3570
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3571
    const/4 v0, 0x0

    return-object v0

    .line 3573
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    return-object v0
.end method

.method public getConstraintSetIds()[I
    .locals 1

    .line 3557
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3558
    const/4 v0, 0x0

    return-object v0

    .line 3560
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSetIds()[I

    move-result-object v0

    return-object v0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .line 3696
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3697
    const/4 v0, 0x0

    return-object v0

    .line 3699
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 3247
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    return v0
.end method

.method public getDebugMode(Z)V
    .locals 1
    .param p1, "showPaths"    # Z

    .line 3094
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 3095
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 3096
    return-void
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    .line 3622
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3623
    const/4 v0, 0x0

    return-object v0

    .line 3625
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .locals 1

    .line 3480
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    if-nez v0, :cond_0

    .line 3481
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    .line 3483
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 3644
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    return v0
.end method

.method protected getNanoTime()J
    .locals 2

    .line 959
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 3256
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    return v0
.end method

.method public getStartState()I
    .locals 1

    .line 3635
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 3654
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    return v0
.end method

.method public getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .locals 1
    .param p1, "id"    # I

    .line 3672
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionById(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 3303
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 3304
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 3306
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 2

    .line 1708
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 1709
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    return v0

    .line 1711
    :cond_0
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v1, :cond_1

    .line 1712
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v0

    return v0

    .line 1714
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "posOnViewX"    # F
    .param p3, "posOnViewY"    # F
    .param p4, "returnVelocity"    # [F
    .param p5, "type"    # I

    .line 1727
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1728
    .local v0, "v":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1729
    .local v1, "position":F
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    .line 1730
    const v2, 0x3727c5ac    # 1.0E-5f

    .line 1731
    .local v2, "deltaT":F
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 1732
    .local v3, "dir":F
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    add-float/2addr v5, v2

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1733
    .local v4, "interpos":F
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1734
    sub-float/2addr v4, v1

    .line 1735
    div-float/2addr v4, v2

    .line 1736
    mul-float v5, v3, v4

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    div-float v0, v5, v6

    move v8, v1

    goto :goto_0

    .line 1729
    .end local v2    # "deltaT":F
    .end local v3    # "dir":F
    .end local v4    # "interpos":F
    :cond_0
    move v8, v1

    .line 1739
    .end local v1    # "position":F
    .local v8, "position":F
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    if-eqz v2, :cond_1

    .line 1740
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    move-result v0

    .line 1743
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1744
    .local v9, "f":Landroidx/constraintlayout/motion/widget/MotionController;
    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_2

    .line 1745
    nop

    .line 1746
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1745
    move-object v1, v9

    move v2, v8

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    goto :goto_1

    .line 1749
    :cond_2
    invoke-virtual {v9, v8, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 1751
    :goto_1
    const/4 v1, 0x2

    if-ge p5, v1, :cond_3

    .line 1752
    const/4 v1, 0x0

    aget v2, p4, v1

    mul-float/2addr v2, v0

    aput v2, p4, v1

    .line 1753
    const/4 v1, 0x1

    aget v2, p4, v1

    mul-float/2addr v2, v0

    aput v2, p4, v1

    .line 1755
    :cond_3
    return-void
.end method

.method public isInteractionEnabled()Z
    .locals 1

    .line 3734
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    return v0
.end method

.method public loadLayoutDescription(I)V
    .locals 5
    .param p1, "motionScene"    # I

    .line 1182
    if-eqz p1, :cond_2

    .line 1184
    :try_start_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 1187
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1188
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 1189
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_1
    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unable to parse MotionScene file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1195
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1197
    :goto_0
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 3683
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3684
    const/4 v0, 0x0

    return v0

    .line 3686
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected obtainVelocityTracker()Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    .locals 1

    .line 968
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 3203
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 3204
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3205
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    .line 3206
    .local v0, "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 3207
    if-eqz v0, :cond_0

    .line 3208
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3210
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 3212
    .end local v0    # "cSet":Landroidx/constraintlayout/widget/ConstraintSet;
    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 3213
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3146
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 3149
    :cond_0
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 3150
    .local v0, "currentTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3151
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v2

    .line 3152
    .local v2, "touchResponse":Landroidx/constraintlayout/motion/widget/TouchResponse;
    if-eqz v2, :cond_4

    .line 3153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3154
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    .line 3155
    .local v3, "region":Landroid/graphics/RectF;
    if-eqz v3, :cond_1

    .line 3156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3157
    return v1

    .line 3160
    .end local v3    # "region":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v3

    .line 3161
    .local v3, "regionId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 3162
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3163
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    .line 3165
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 3166
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3167
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3170
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-direct {p0, v5, v5, v4, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3172
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3179
    .end local v2    # "touchResponse":Landroidx/constraintlayout/motion/widget/TouchResponse;
    .end local v3    # "regionId":I
    :cond_4
    return v1

    .line 3147
    .end local v0    # "currentTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    :cond_5
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 2903
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 2904
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2905
    return-void

    .line 2907
    :cond_0
    sub-int v0, p4, p2

    .line 2908
    .local v0, "w":I
    sub-int v1, p5, p3

    .line 2909
    .local v1, "h":I
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    if-eq v2, v1, :cond_2

    .line 2910
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 2911
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 2917
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    .line 2918
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    .line 2920
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldWidth:I

    .line 2921
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldHeight:I

    .line 2922
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2086
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 2087
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 2088
    return-void

    .line 2090
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2091
    .local v0, "recalc":Z
    :goto_1
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    if-eqz v2, :cond_4

    .line 2092
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    .line 2093
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    .line 2094
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    if-eqz v1, :cond_3

    .line 2095
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    .line 2097
    :cond_3
    const/4 v0, 0x1

    .line 2100
    :cond_4
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDirtyHierarchy:Z

    if-eqz v1, :cond_5

    .line 2101
    const/4 v0, 0x1

    .line 2104
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    .line 2105
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    .line 2107
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v1

    .line 2108
    .local v1, "startId":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v2

    .line 2109
    .local v2, "endId":I
    if-nez v0, :cond_6

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->isNotConfiguredWith(II)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 2110
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 2111
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 2112
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 2113
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    goto :goto_2

    .line 2115
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 2116
    .local v3, "heightPadding":I
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 2117
    .local v4, "widthPadding":I
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 2118
    .local v5, "androidLayoutWidth":I
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 2119
    .local v6, "androidLayoutHeight":I
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_8

    .line 2120
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    int-to-float v9, v7

    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v11, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    sub-int/2addr v11, v7

    int-to-float v7, v11

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    float-to-int v5, v9

    .line 2121
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2123
    :cond_8
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    if-ne v7, v8, :cond_9

    .line 2124
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    int-to-float v8, v7

    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    iget v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    sub-int/2addr v10, v7

    int-to-float v7, v10

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 2125
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 2127
    :cond_9
    invoke-virtual {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setMeasuredDimension(II)V

    .line 2129
    .end local v3    # "heightPadding":I
    .end local v4    # "widthPadding":I
    .end local v5    # "androidLayoutWidth":I
    .end local v6    # "androidLayoutHeight":I
    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluateLayout()V

    .line 2130
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 2262
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 2257
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 2187
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2191
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2192
    return-void

    .line 2195
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2196
    .local v0, "currentTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2197
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v2

    .line 2198
    .local v2, "touchResponse":Landroidx/constraintlayout/motion/widget/TouchResponse;
    if-eqz v2, :cond_2

    .line 2199
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    move-result v3

    .line 2200
    .local v3, "regionId":I
    if-eq v3, v1, :cond_2

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 2201
    return-void

    .line 2206
    .end local v2    # "touchResponse":Landroidx/constraintlayout/motion/widget/TouchResponse;
    .end local v3    # "regionId":I
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMoveWhenScrollAtTop()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2208
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2209
    return-void

    .line 2214
    :cond_4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_8

    .line 2215
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    int-to-float v6, p2

    int-to-float v7, p3

    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getProgressDirection(FF)F

    move-result v1

    .line 2216
    .local v1, "dir":F
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_5

    cmpg-float v7, v1, v4

    if-ltz v7, :cond_6

    :cond_5
    cmpl-float v3, v6, v3

    if-ltz v3, :cond_8

    cmpl-float v3, v1, v4

    if-lez v3, :cond_8

    .line 2218
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_7

    .line 2219
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2221
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$1;

    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2228
    :cond_7
    return-void

    .line 2235
    .end local v1    # "dir":F
    :cond_8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 2236
    .local v1, "progress":F
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v3

    .line 2237
    .local v3, "time":J
    int-to-float v6, p2

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    .line 2238
    int-to-float v6, p3

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    .line 2239
    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    sub-long v6, v3, v6

    long-to-double v6, v6

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    .line 2240
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    .line 2244
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    int-to-float v7, p2

    int-to-float v8, p3

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollMove(FF)V

    .line 2245
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_9

    .line 2246
    aput p2, p4, v2

    .line 2247
    aput p3, p4, v5

    .line 2249
    :cond_9
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    .line 2250
    aget v2, p4, v2

    if-nez v2, :cond_a

    aget v2, p4, v5

    if-eqz v2, :cond_b

    .line 2251
    :cond_a
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 2253
    :cond_b
    return-void

    .line 2188
    .end local v0    # "currentTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .end local v1    # "progress":F
    .end local v3    # "time":J
    :cond_c
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 2182
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 2170
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2171
    :cond_0
    aget v0, p7, v1

    add-int/2addr v0, p4

    aput v0, p7, v1

    .line 2172
    const/4 v0, 0x1

    aget v2, p7, v0

    add-int/2addr v2, p5

    aput v2, p7, v0

    .line 2174
    :cond_1
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    .line 2175
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 2152
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 3217
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 3218
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    .line 3220
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 2137
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    .line 2138
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2140
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2141
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2144
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2142
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 2161
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    .line 2162
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 2163
    return-void

    .line 2165
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    div-float/2addr v1, v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollUp(FF)V

    .line 2166
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3187
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3188
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 3189
    .local v0, "currentTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3190
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 3192
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v2

    invoke-virtual {v1, p1, v2, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 3193
    const/4 v1, 0x1

    return v1

    .line 3198
    .end local v0    # "currentTransition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 3491
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 3492
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_4

    .line 3493
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3494
    .local v0, "helper":Landroidx/constraintlayout/motion/widget/MotionHelper;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3495
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    .line 3497
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3499
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUsedOnShow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3500
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 3501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    .line 3503
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3505
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUseOnHide()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3506
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 3507
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    .line 3509
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3512
    .end local v0    # "helper":Landroidx/constraintlayout/motion/widget/MotionHelper;
    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3519
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 3520
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3521
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3523
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3524
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3526
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    if-ne v0, p1, :cond_2

    .line 3527
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTarget:Landroid/view/View;

    .line 3529
    :cond_2
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 1
    .param p1, "id"    # I

    .line 2931
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2932
    return-void
.end method

.method public rebuildMotion()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3583
    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 3585
    return-void
.end method

.method public rebuildScene()V
    .locals 1

    .line 3591
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 3592
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 3593
    return-void
.end method

.method public removeTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)Z
    .locals 1
    .param p1, "listener"    # Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3337
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 2

    .line 2071
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    if-nez v0, :cond_0

    .line 2072
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 2074
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getLayoutDuringTransition()I

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    return-void

    .line 2078
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 2079
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0
    .param p1, "debugMode"    # I

    .line 3081
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    .line 3082
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 3083
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 3721
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    .line 3722
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 2
    .param p1, "pos"    # F

    .line 1225
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 1227
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v0, :cond_0

    .line 1228
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1229
    return-void

    .line 1232
    .end local v0    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1233
    return-void
.end method

.method public setOnHide(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 3542
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3543
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3544
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3545
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3546
    .local v2, "helper":Landroidx/constraintlayout/motion/widget/MotionHelper;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 3544
    .end local v2    # "helper":Landroidx/constraintlayout/motion/widget/MotionHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3549
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 3532
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3534
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3535
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    .line 3536
    .local v2, "helper":Landroidx/constraintlayout/motion/widget/MotionHelper;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    .line 3534
    .end local v2    # "helper":Landroidx/constraintlayout/motion/widget/MotionHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3539
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "pos"    # F

    .line 1261
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1262
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_0

    .line 1263
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 1264
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    goto :goto_0

    .line 1266
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1269
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_2

    .line 1270
    return-void

    .line 1273
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 1274
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1275
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 1276
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 1277
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 1278
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1280
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1281
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 1282
    return-void
.end method

.method public setProgress(FF)V
    .locals 1
    .param p1, "pos"    # F
    .param p2, "velocity"    # F

    .line 1242
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1243
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1244
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 1245
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 1
    .param p1, "scene"    # Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2990
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 2991
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    .line 2992
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 2993
    return-void
.end method

.method public setState(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1209
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1210
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1211
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1212
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_1

    .line 1215
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1217
    :cond_1
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 8
    .param p1, "transitionId"    # I

    .line 1103
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_4

    .line 1104
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    move-result-object v0

    .line 1105
    .local v0, "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1106
    .local v1, "current":I
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1107
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1115
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 1116
    .local v3, "pos":F
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v4, v5, :cond_0

    .line 1117
    const/4 v3, 0x0

    goto :goto_0

    .line 1118
    :cond_0
    if-ne v4, v2, :cond_1

    .line 1119
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1121
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 1122
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1123
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 1125
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1127
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " transitionToStart "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MotionLayout"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    goto :goto_2

    .line 1131
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1134
    .end local v0    # "transition":Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .end local v1    # "current":I
    .end local v3    # "pos":F
    :cond_4
    :goto_2
    return-void
.end method

.method public setTransition(II)V
    .locals 4
    .param p1, "beginId"    # I
    .param p2, "endId"    # I

    .line 1080
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 1081
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1082
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1088
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 1089
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1090
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 1091
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1092
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    .line 1094
    :cond_0
    return-void
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 7
    .param p1, "transition"    # Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 1137
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 1139
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1140
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1141
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 1142
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    goto :goto_0

    .line 1144
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1145
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 1146
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1148
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 1153
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v0

    .line 1154
    .local v0, "newBeginState":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    move-result v1

    .line 1155
    .local v1, "newEndState":I
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    if-ne v1, v2, :cond_1

    .line 1156
    return-void

    .line 1158
    :cond_1
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1159
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1160
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 1166
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1167
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    .line 1168
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    .line 1170
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 1172
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-direct {p0, p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 1173
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2
    .param p1, "milliseconds"    # I

    .line 3658
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 3659
    const-string v0, "MotionLayout"

    const-string v1, "MotionScene not defined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    return-void

    .line 3662
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setDuration(I)V

    .line 3663
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3316
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 3317
    return-void
.end method

.method public touchAnimateTo(IFF)V
    .locals 10
    .param p1, "touchUpMode"    # I
    .param p2, "position"    # F
    .param p3, "currentVelocity"    # F

    .line 1387
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v0, :cond_0

    .line 1388
    return-void

    .line 1390
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 1391
    return-void

    .line 1394
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 1395
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 1396
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 1398
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1399
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1401
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1429
    :pswitch_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v3

    invoke-static {p3, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->willJump(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1431
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_3

    .line 1433
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1434
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v9

    .line 1433
    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1435
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 1436
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1437
    .local v0, "currentState":I
    cmpl-float v3, p2, v2

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1438
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1439
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_3

    .line 1424
    .end local v0    # "currentState":I
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v2

    invoke-virtual {v0, p3, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    .line 1425
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1427
    goto :goto_3

    .line 1422
    :pswitch_2
    goto :goto_3

    .line 1405
    :pswitch_3
    if-ne p1, v0, :cond_4

    .line 1406
    const/4 p2, 0x0

    goto :goto_1

    .line 1407
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 1408
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1410
    :cond_5
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 1411
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    move-result v8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    move-result v9

    .line 1410
    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    .line 1413
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1414
    .restart local v0    # "currentState":I
    cmpl-float v3, p2, v2

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 1415
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    .line 1416
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1418
    .end local v0    # "currentState":I
    nop

    .line 1445
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 1446
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 1447
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 1448
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public transitionToEnd()V
    .locals 1

    .line 1562
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 1563
    return-void
.end method

.method public transitionToStart()V
    .locals 1

    .line 1555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 1556
    return-void
.end method

.method public transitionToState(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1572
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(III)V

    .line 1573
    return-void
.end method

.method public transitionToState(III)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1593
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    move/from16 v4, p2

    int-to-float v5, v4

    move/from16 v6, p3

    int-to-float v7, v6

    move/from16 v8, p1

    invoke-virtual {v1, v3, v8, v5, v7}, Landroidx/constraintlayout/widget/StateSet;->convertToConstraintSet(IIFF)I

    move-result v1

    .line 1596
    .local v1, "tmp_id":I
    if-eq v1, v2, :cond_1

    .line 1602
    move v3, v1

    .end local p1    # "id":I
    .local v3, "id":I
    goto :goto_0

    .line 1593
    .end local v1    # "tmp_id":I
    .end local v3    # "id":I
    .restart local p1    # "id":I
    :cond_0
    move/from16 v8, p1

    move/from16 v4, p2

    move/from16 v6, p3

    .line 1605
    :cond_1
    move v3, v8

    .end local p1    # "id":I
    .restart local v3    # "id":I
    :goto_0
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v1, v3, :cond_2

    .line 1606
    return-void

    .line 1608
    :cond_2
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    const/4 v7, 0x0

    if-ne v5, v3, :cond_3

    .line 1609
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 1610
    return-void

    .line 1612
    :cond_3
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v5, v3, :cond_4

    .line 1613
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 1614
    return-void

    .line 1616
    :cond_4
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    .line 1617
    if-eq v1, v2, :cond_5

    .line 1625
    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 1626
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 1628
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1629
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    .line 1630
    return-void

    .line 1638
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    .line 1639
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 1640
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 1641
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1642
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    .line 1643
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    .line 1644
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    .line 1645
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1646
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v5, v9

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 1647
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    .line 1648
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v5, v2, v9}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    .line 1650
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    move-result v2

    .line 1651
    .local v2, "startId":I
    move v5, v3

    .line 1652
    .local v5, "targetID":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v9

    .line 1653
    .local v9, "n":I
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1654
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_6

    .line 1655
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1656
    .local v11, "v":Landroid/view/View;
    new-instance v12, Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-direct {v12, v11}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 1657
    .local v12, "f":Landroidx/constraintlayout/motion/widget/MotionController;
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1659
    .end local v10    # "i":I
    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1661
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v13, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v13

    invoke-virtual {v11, v12, v1, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 1663
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    .line 1664
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->computeCurrentPositions()V

    .line 1665
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v1

    .line 1666
    .local v1, "layoutWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v17

    .line 1668
    .local v17, "layoutHeight":I
    const/4 v11, 0x0

    move v15, v11

    .local v15, "i":I
    :goto_2
    if-ge v15, v9, :cond_7

    .line 1669
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1670
    .local v14, "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v11, v14}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    .line 1671
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v18

    move-object v11, v14

    move v12, v1

    move/from16 v16, v13

    move/from16 v13, v17

    move-object/from16 v20, v14

    .end local v14    # "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    .local v20, "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    move/from16 v14, v16

    move/from16 v21, v15

    .end local v15    # "i":I
    .local v21, "i":I
    move-wide/from16 v15, v18

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    .line 1668
    .end local v20    # "motionController":Landroidx/constraintlayout/motion/widget/MotionController;
    add-int/lit8 v15, v21, 0x1

    .end local v21    # "i":I
    .restart local v15    # "i":I
    goto :goto_2

    :cond_7
    move/from16 v21, v15

    .line 1674
    .end local v15    # "i":I
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    move-result v11

    .line 1675
    .local v11, "stagger":F
    cmpl-float v12, v11, v7

    if-eqz v12, :cond_a

    .line 1677
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .local v12, "min":F
    const v13, -0x800001

    .line 1678
    .local v13, "max":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v9, :cond_8

    .line 1679
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1680
    .local v10, "f":Landroidx/constraintlayout/motion/widget/MotionController;
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v15

    .line 1681
    .local v15, "x":F
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v16

    .line 1682
    .local v16, "y":F
    add-float v7, v16, v15

    invoke-static {v12, v7}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 1683
    add-float v7, v16, v15

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 1678
    .end local v10    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v15    # "x":F
    .end local v16    # "y":F
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_3

    .line 1686
    .end local v14    # "i":I
    :cond_8
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v9, :cond_9

    .line 1687
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 1688
    .restart local v10    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    move-result v14

    .line 1689
    .local v14, "x":F
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    move-result v15

    .line 1690
    .local v15, "y":F
    sub-float v16, v8, v11

    move/from16 v19, v1

    .end local v1    # "layoutWidth":I
    .local v19, "layoutWidth":I
    div-float v1, v8, v16

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 1691
    add-float v1, v14, v15

    sub-float/2addr v1, v12

    mul-float/2addr v1, v11

    sub-float v16, v13, v12

    div-float v1, v1, v16

    sub-float v1, v11, v1

    iput v1, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 1686
    .end local v10    # "f":Landroidx/constraintlayout/motion/widget/MotionController;
    .end local v14    # "x":F
    .end local v15    # "y":F
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v19

    goto :goto_4

    .end local v19    # "layoutWidth":I
    .restart local v1    # "layoutWidth":I
    :cond_9
    move/from16 v19, v1

    .end local v1    # "layoutWidth":I
    .restart local v19    # "layoutWidth":I
    goto :goto_5

    .line 1675
    .end local v7    # "i":I
    .end local v12    # "min":F
    .end local v13    # "max":F
    .end local v19    # "layoutWidth":I
    .restart local v1    # "layoutWidth":I
    :cond_a
    move/from16 v19, v1

    .line 1695
    .end local v1    # "layoutWidth":I
    .restart local v19    # "layoutWidth":I
    :goto_5
    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    .line 1696
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 1697
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    .line 1699
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    .line 1700
    return-void
.end method

.method public updateState()V
    .locals 5

    .line 3612
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 3613
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    .line 3614
    return-void
.end method

.method public updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 1
    .param p1, "stateId"    # I
    .param p2, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 3602
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-eqz v0, :cond_0

    .line 3603
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 3605
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState()V

    .line 3606
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    if-ne v0, p1, :cond_1

    .line 3607
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3609
    :cond_1
    return-void
.end method
