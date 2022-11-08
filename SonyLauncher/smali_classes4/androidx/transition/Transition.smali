.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$ArrayListManager;,
        Landroidx/transition/Transition$AnimationInfo;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroidx/transition/TransitionSet;

.field private mPathMotion:Landroidx/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/TransitionPropagation;

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 171
    new-instance v0, Landroidx/transition/Transition$1;

    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 183
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 198
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 200
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 183
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 198
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 200
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 275
    sget-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    .line 277
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v3, "duration"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v3, v3

    .line 279
    .local v3, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    .line 280
    invoke-virtual {p0, v3, v4}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 282
    :cond_0
    const/4 v8, 0x2

    const-string v9, "startDelay"

    invoke-static {v0, v2, v9, v8, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    int-to-long v8, v5

    .line 284
    .local v8, "startDelay":J
    cmp-long v5, v8, v6

    if-lez v5, :cond_1

    .line 285
    invoke-virtual {p0, v8, v9}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    .line 287
    :cond_1
    const-string v5, "interpolator"

    invoke-static {v0, v2, v5, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 289
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 290
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 292
    :cond_2
    const/4 v5, 0x3

    const-string v6, "matchOrder"

    invoke-static {v0, v2, v6, v5}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "matchOrder":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 295
    invoke-static {v5}, Landroidx/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/transition/Transition;->setMatchOrder([I)V

    .line 297
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-void
.end method

.method private addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 645
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 646
    .local v1, "start":Landroidx/transition/TransitionValues;
    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v1    # "start":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 654
    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 655
    .local v1, "end":Landroidx/transition/TransitionValues;
    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 656
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v1    # "end":Landroidx/transition/TransitionValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 660
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .locals 9
    .param p0, "transitionValuesMaps"    # Landroidx/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 1526
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1528
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1529
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1531
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1533
    :cond_0
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1536
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1537
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1538
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1540
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1542
    :cond_2
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 1546
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1547
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1548
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1549
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1550
    .local v5, "itemId":J
    iget-object v7, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_5

    .line 1552
    iget-object v7, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1553
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1554
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1555
    iget-object v8, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1557
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_4
    goto :goto_2

    .line 1558
    :cond_5
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1559
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1563
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_6
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 3
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 528
    aget v0, p0, p1

    .line 529
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 530
    aget v2, p0, v1

    if-ne v2, v0, :cond_0

    .line 531
    const/4 v2, 0x1

    return v2

    .line 529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1593
    if-nez p1, :cond_0

    .line 1594
    return-void

    .line 1596
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1597
    .local v0, "id":I
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1598
    return-void

    .line 1600
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1601
    return-void

    .line 1603
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1604
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1605
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1606
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1607
    return-void

    .line 1605
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1611
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1612
    new-instance v1, Landroidx/transition/TransitionValues;

    invoke-direct {v1, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1613
    .local v1, "values":Landroidx/transition/TransitionValues;
    if-eqz p2, :cond_5

    .line 1614
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 1616
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1618
    :goto_1
    iget-object v2, v1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1620
    if-eqz p2, :cond_6

    .line 1621
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1623
    :cond_6
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1626
    .end local v1    # "values":Landroidx/transition/TransitionValues;
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1628
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1629
    return-void

    .line 1631
    :cond_8
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1632
    return-void

    .line 1634
    :cond_9
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 1635
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1636
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_b

    .line 1637
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1638
    return-void

    .line 1636
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1642
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1643
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1644
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1643
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1647
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1304
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_1

    .line 1305
    if-eqz p3, :cond_0

    .line 1306
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1308
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1311
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1155
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 1156
    if-eqz p2, :cond_0

    .line 1157
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1159
    :cond_0
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1162
    :cond_1
    :goto_0
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1388
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_1

    .line 1389
    if-eqz p3, :cond_0

    .line 1390
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1392
    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1395
    :cond_1
    :goto_0
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1319
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_1

    .line 1320
    if-eqz p3, :cond_0

    .line 1321
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1323
    :cond_0
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1326
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static getRunningAnimators()Landroidx/collection/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 853
    sget-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/ArrayMap;

    .line 854
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 855
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, v1

    .line 856
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 858
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .line 524
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldValues"    # Landroidx/transition/TransitionValues;
    .param p1, "newValues"    # Landroidx/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1850
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1851
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1853
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1855
    const/4 v2, 0x0

    .local v2, "changed":Z
    goto :goto_1

    .line 1856
    .end local v2    # "changed":Z
    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1861
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .restart local v2    # "changed":Z
    goto :goto_1

    .line 1858
    .end local v2    # "changed":Z
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 1868
    .restart local v2    # "changed":Z
    :goto_1
    return v2
.end method

.method private matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 592
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 593
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 594
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 596
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 598
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 599
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 600
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 544
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 545
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 547
    .local v2, "end":Landroidx/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 548
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    .line 549
    .local v3, "start":Landroidx/transition/TransitionValues;
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroidx/transition/TransitionValues;
    .end local v3    # "start":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 554
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 565
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 566
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 567
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 569
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 571
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 572
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 573
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 619
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 620
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 621
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 623
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 625
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 626
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 627
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V
    .locals 5
    .param p1, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroidx/transition/TransitionValuesMaps;

    .line 664
    new-instance v0, Landroidx/collection/ArrayMap;

    iget-object v1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 665
    .local v0, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    new-instance v1, Landroidx/collection/ArrayMap;

    iget-object v2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 667
    .local v1, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 668
    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 681
    :pswitch_0
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    goto :goto_1

    .line 677
    :pswitch_1
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 679
    goto :goto_1

    .line 673
    :pswitch_2
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 675
    goto :goto_1

    .line 670
    :pswitch_3
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 671
    nop

    .line 667
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 687
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 7
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 305
    .local v1, "matches":[I
    const/4 v2, 0x0

    .line 306
    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "token":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 309
    const/4 v4, 0x3

    aput v4, v1, v2

    goto :goto_1

    .line 310
    :cond_0
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    aput v5, v1, v2

    goto :goto_1

    .line 312
    :cond_1
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    const/4 v4, 0x2

    aput v4, v1, v2

    goto :goto_1

    .line 314
    :cond_2
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    const/4 v4, 0x4

    aput v4, v1, v2

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 318
    array-length v4, v1

    sub-int/2addr v4, v5

    new-array v4, v4, [I

    .line 319
    .local v4, "smallerMatches":[I
    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    move-object v1, v4

    .line 321
    nop

    .end local v4    # "smallerMatches":[I
    add-int/lit8 v2, v2, -0x1

    .line 322
    nop

    .line 325
    :goto_1
    nop

    .end local v3    # "token":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 326
    goto :goto_0

    .line 323
    .restart local v3    # "token":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    .end local v3    # "token":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 890
    .local p2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 892
    new-instance v0, Landroidx/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 904
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 906
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 2026
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2029
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2030
    return-object p0
.end method

.method public addTarget(I)Landroidx/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1018
    if-eqz p1, :cond_0

    .line 1019
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 994
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1073
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1076
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1043
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1046
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1883
    if-nez p1, :cond_0

    .line 1884
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    goto :goto_0

    .line 1886
    :cond_0
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1887
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1889
    :cond_1
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1890
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1892
    :cond_2
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1893
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1895
    :cond_3
    new-instance v0, Landroidx/transition/Transition$3;

    invoke-direct {v0, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1902
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1904
    :goto_0
    return-void
.end method

.method protected cancel()V
    .locals 5

    .line 2001
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2002
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2003
    iget-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 2004
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 2002
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2006
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2007
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2008
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2009
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2010
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 2011
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    .line 2010
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2014
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 2173
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2174
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroidx/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2175
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2176
    return-void

    .line 2178
    :cond_0
    const/4 v1, 0x1

    .line 2179
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2180
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2181
    const/4 v1, 0x0

    .line 2182
    goto :goto_1

    .line 2179
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2185
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2186
    iget-object v2, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroidx/transition/TransitionPropagation;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2189
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1465
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 1466
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1467
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1468
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1505
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    .line 1469
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1470
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1471
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1472
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 1473
    new-instance v3, Landroidx/transition/TransitionValues;

    invoke-direct {v3, v2}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1474
    .local v3, "values":Landroidx/transition/TransitionValues;
    if-eqz p2, :cond_4

    .line 1475
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_2

    .line 1477
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1479
    :goto_2
    iget-object v4, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1481
    if-eqz p2, :cond_5

    .line 1482
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_3

    .line 1484
    :cond_5
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1469
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroidx/transition/TransitionValues;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1488
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1489
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1490
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroidx/transition/TransitionValues;

    invoke-direct {v2, v1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 1491
    .local v2, "values":Landroidx/transition/TransitionValues;
    if-eqz p2, :cond_8

    .line 1492
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_5

    .line 1494
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1496
    :goto_5
    iget-object v3, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1498
    if-eqz p2, :cond_9

    .line 1499
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_6

    .line 1501
    :cond_9
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1488
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "values":Landroidx/transition/TransitionValues;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1507
    .end local v0    # "i":I
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object v0, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_d

    .line 1508
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 1509
    .local v0, "numOverrides":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1510
    .local v1, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_b

    .line 1511
    iget-object v3, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1512
    .local v3, "fromName":Ljava/lang/String;
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    .end local v3    # "fromName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1514
    .end local v2    # "i":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    if-ge v2, v0, :cond_d

    .line 1515
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1516
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 1517
    iget-object v4, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1518
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1522
    .end local v0    # "numOverrides":I
    .end local v1    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 1571
    if-eqz p1, :cond_0

    .line 1572
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1573
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1574
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    goto :goto_0

    .line 1576
    :cond_0
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1577
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1578
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1580
    :goto_0
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .locals 3

    .line 2203
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 2204
    .local v1, "clone":Landroidx/transition/Transition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2205
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 2206
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 2207
    iput-object v0, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2208
    iput-object v0, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2209
    return-object v1

    .line 2210
    .end local v1    # "clone":Landroidx/transition/Transition;
    :catch_0
    move-exception v1

    .line 2211
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroidx/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 704
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v8

    .line 705
    .local v8, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 706
    .local v0, "minStartDelay":J
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v2

    .line 707
    .local v9, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 708
    .local v10, "startValuesListCount":I
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_11

    .line 709
    move-object/from16 v12, p4

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 710
    .local v2, "start":Landroidx/transition/TransitionValues;
    move-object/from16 v13, p5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    .line 711
    .local v3, "end":Landroidx/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 712
    const/4 v2, 0x0

    move-object v14, v2

    goto :goto_1

    .line 714
    :cond_0
    move-object v14, v2

    .end local v2    # "start":Landroidx/transition/TransitionValues;
    .local v14, "start":Landroidx/transition/TransitionValues;
    :goto_1
    if-eqz v3, :cond_1

    iget-object v2, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 715
    const/4 v3, 0x0

    move-object v15, v3

    goto :goto_2

    .line 717
    :cond_1
    move-object v15, v3

    .end local v3    # "end":Landroidx/transition/TransitionValues;
    .local v15, "end":Landroidx/transition/TransitionValues;
    :goto_2
    if-nez v14, :cond_2

    if-nez v15, :cond_2

    .line 718
    move/from16 v18, v10

    move/from16 v19, v11

    goto/16 :goto_c

    .line 721
    :cond_2
    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    invoke-virtual {v6, v14, v15}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :goto_4
    move/from16 v16, v2

    .line 722
    .local v16, "isChanged":Z
    if-eqz v16, :cond_f

    .line 741
    invoke-virtual {v6, v7, v14, v15}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    .line 742
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_e

    .line 745
    const/4 v3, 0x0

    .line 746
    .local v3, "infoValues":Landroidx/transition/TransitionValues;
    if-eqz v15, :cond_c

    .line 747
    iget-object v4, v15, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 748
    .local v4, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v5

    .line 749
    .local v5, "properties":[Ljava/lang/String;
    if-eqz v5, :cond_b

    move-object/from16 v17, v2

    .end local v2    # "animator":Landroid/animation/Animator;
    .local v17, "animator":Landroid/animation/Animator;
    array-length v2, v5

    if-lez v2, :cond_a

    .line 750
    new-instance v2, Landroidx/transition/TransitionValues;

    invoke-direct {v2, v4}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    .line 751
    .end local v3    # "infoValues":Landroidx/transition/TransitionValues;
    .local v2, "infoValues":Landroidx/transition/TransitionValues;
    move-object/from16 v3, p3

    move/from16 v18, v10

    .end local v10    # "startValuesListCount":I
    .local v18, "startValuesListCount":I
    iget-object v10, v3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v10, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/TransitionValues;

    .line 752
    .local v10, "newValues":Landroidx/transition/TransitionValues;
    if-eqz v10, :cond_6

    .line 753
    const/16 v19, 0x0

    move/from16 v3, v19

    .local v3, "j":I
    :goto_5
    array-length v12, v5

    if-ge v3, v12, :cond_5

    .line 754
    iget-object v12, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v13, v5, v3

    move/from16 v19, v11

    .end local v11    # "i":I
    .local v19, "i":I
    iget-object v11, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v20, v10

    .end local v10    # "newValues":Landroidx/transition/TransitionValues;
    .local v20, "newValues":Landroidx/transition/TransitionValues;
    aget-object v10, v5, v3

    .line 755
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 754
    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v11, v19

    move-object/from16 v10, v20

    goto :goto_5

    .end local v19    # "i":I
    .end local v20    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v10    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_5
    move-object/from16 v20, v10

    move/from16 v19, v11

    .end local v10    # "newValues":Landroidx/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v19    # "i":I
    .restart local v20    # "newValues":Landroidx/transition/TransitionValues;
    goto :goto_6

    .line 752
    .end local v3    # "j":I
    .end local v19    # "i":I
    .end local v20    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v10    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_6
    move-object/from16 v20, v10

    move/from16 v19, v11

    .line 758
    .end local v10    # "newValues":Landroidx/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v19    # "i":I
    .restart local v20    # "newValues":Landroidx/transition/TransitionValues;
    :goto_6
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v3

    .line 759
    .local v3, "numExistingAnims":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_7
    if-ge v10, v3, :cond_9

    .line 760
    invoke-virtual {v8, v10}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 761
    .local v11, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/transition/Transition$AnimationInfo;

    .line 762
    .local v12, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v13, v12, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    if-eqz v13, :cond_7

    iget-object v13, v12, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v13, v4, :cond_7

    iget-object v13, v12, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 763
    move/from16 v21, v3

    .end local v3    # "numExistingAnims":I
    .local v21, "numExistingAnims":I
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 764
    iget-object v3, v12, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    invoke-virtual {v3, v2}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 766
    const/4 v3, 0x0

    .line 767
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v3, "animator":Landroid/animation/Animator;
    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    goto :goto_9

    .line 762
    .end local v21    # "numExistingAnims":I
    .local v3, "numExistingAnims":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    :cond_7
    move/from16 v21, v3

    .line 759
    .end local v3    # "numExistingAnims":I
    .end local v11    # "anim":Landroid/animation/Animator;
    .end local v12    # "info":Landroidx/transition/Transition$AnimationInfo;
    .restart local v21    # "numExistingAnims":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v21

    goto :goto_7

    .end local v21    # "numExistingAnims":I
    .restart local v3    # "numExistingAnims":I
    :cond_9
    move/from16 v21, v3

    .end local v3    # "numExistingAnims":I
    .restart local v21    # "numExistingAnims":I
    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_9

    .line 749
    .end local v2    # "infoValues":Landroidx/transition/TransitionValues;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .end local v20    # "newValues":Landroidx/transition/TransitionValues;
    .end local v21    # "numExistingAnims":I
    .local v3, "infoValues":Landroidx/transition/TransitionValues;
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    :cond_a
    move/from16 v18, v10

    move/from16 v19, v11

    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    goto :goto_8

    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .local v2, "animator":Landroid/animation/Animator;
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_b
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .line 772
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v5    # "properties":[Ljava/lang/String;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    :goto_8
    move-object/from16 v2, v17

    .end local v17    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :goto_9
    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    goto :goto_a

    .line 773
    .end local v4    # "view":Landroid/view/View;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_c
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    iget-object v4, v14, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v10, v17

    .line 775
    .end local v3    # "infoValues":Landroidx/transition/TransitionValues;
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v10, "animator":Landroid/animation/Animator;
    .local v11, "infoValues":Landroidx/transition/TransitionValues;
    .local v12, "view":Landroid/view/View;
    :goto_a
    if-eqz v10, :cond_10

    .line 776
    iget-object v2, v6, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v2, :cond_d

    .line 777
    invoke-virtual {v2, v7, v6, v14, v15}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    move-result-wide v2

    .line 778
    .local v2, "delay":J
    iget-object v4, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v5, v2

    invoke-virtual {v9, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v20, v0

    goto :goto_b

    .line 776
    .end local v2    # "delay":J
    :cond_d
    move-wide/from16 v20, v0

    .line 781
    .end local v0    # "minStartDelay":J
    .local v20, "minStartDelay":J
    :goto_b
    new-instance v13, Landroidx/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v4

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v3, p0

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V

    .line 783
    .local v0, "info":Landroidx/transition/Transition$AnimationInfo;
    invoke-virtual {v8, v10, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v1, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v0, v20

    goto :goto_c

    .line 742
    .end local v12    # "view":Landroid/view/View;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .end local v20    # "minStartDelay":J
    .local v0, "minStartDelay":J
    .local v2, "animator":Landroid/animation/Animator;
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    :cond_e
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    goto :goto_c

    .line 722
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_f
    move/from16 v18, v10

    move/from16 v19, v11

    .line 708
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .end local v14    # "start":Landroidx/transition/TransitionValues;
    .end local v15    # "end":Landroidx/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    :cond_10
    :goto_c
    add-int/lit8 v11, v19, 0x1

    move/from16 v10, v18

    .end local v19    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_0

    .end local v18    # "startValuesListCount":I
    .restart local v10    # "startValuesListCount":I
    :cond_11
    move/from16 v18, v10

    move/from16 v19, v11

    .line 789
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "startValuesListCount":I
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    .line 790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 791
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 792
    .local v3, "index":I
    iget-object v4, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 793
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-long v10, v5

    sub-long/2addr v10, v0

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 794
    .local v10, "delay":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 790
    .end local v3    # "index":I
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v10    # "delay":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 797
    .end local v2    # "i":I
    :cond_12
    return-void
.end method

.method protected end()V
    .locals 5

    .line 1942
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 1943
    if-nez v0, :cond_5

    .line 1944
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1945
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1946
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1947
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1948
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1949
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    .line 1948
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1952
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 1953
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1954
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1955
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1952
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1958
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1959
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1960
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1961
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1958
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1964
    .end local v0    # "i":I
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 1966
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1295
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1296
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1265
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1266
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 1
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1378
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1379
    return-object p0
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1213
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1214
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1187
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1188
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .locals 1
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1351
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1352
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 1239
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroidx/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1240
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1975
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1976
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1977
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 1981
    :cond_0
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v2

    .line 1982
    .local v2, "windowId":Landroidx/transition/WindowIdImpl;
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3, v0}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 1983
    .local v3, "oldAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1985
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 1986
    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 1987
    .local v5, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1988
    invoke-virtual {v3, v4}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 1989
    .local v6, "anim":Landroid/animation/Animator;
    invoke-virtual {v6}, Landroid/animation/Animator;->end()V

    .line 1985
    .end local v5    # "info":Landroidx/transition/Transition$AnimationInfo;
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1992
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 1978
    .end local v2    # "windowId":Landroidx/transition/WindowIdImpl;
    .end local v3    # "oldAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 354
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1

    .line 2130
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    .line 2131
    const/4 v0, 0x0

    return-object v0

    .line 2133
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;
    .locals 1

    .line 2117
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 409
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1676
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1679
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1680
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1681
    return-object v1

    .line 1683
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1684
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1685
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1686
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 1687
    .local v5, "values":Landroidx/transition/TransitionValues;
    if-nez v5, :cond_3

    .line 1689
    return-object v1

    .line 1691
    :cond_3
    iget-object v6, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_4

    .line 1692
    move v3, v4

    .line 1693
    goto :goto_2

    .line 1685
    .end local v5    # "values":Landroidx/transition/TransitionValues;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1696
    .end local v4    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 1697
    .local v1, "values":Landroidx/transition/TransitionValues;
    if-ltz v3, :cond_7

    .line 1698
    if-eqz p2, :cond_6

    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1699
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 1701
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2229
    iget-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/PathMotion;
    .locals 1

    .line 2087
    iget-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroidx/transition/TransitionPropagation;
    .locals 1

    .line 2165
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 381
    iget-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1438
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1423
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1657
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1658
    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1660
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 1661
    .local v0, "valuesMaps":Landroidx/transition/TransitionValuesMaps;
    :goto_0
    iget-object v1, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    return-object v1
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 1824
    const/4 v0, 0x0

    .line 1827
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1828
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1829
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1830
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1831
    .local v4, "property":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1832
    const/4 v0, 0x1

    .line 1833
    goto :goto_1

    .line 1830
    .end local v4    # "property":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_3

    .line 1837
    :cond_2
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1838
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1839
    const/4 v0, 0x1

    .line 1840
    goto :goto_3

    .line 1842
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 1845
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_4
    :goto_3
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .line 810
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 811
    .local v0, "targetId":I
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    return v2

    .line 814
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    return v2

    .line 817
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 818
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 819
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 820
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 821
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 822
    return v2

    .line 819
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 826
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_3
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 827
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 828
    return v2

    .line 831
    :cond_4
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 832
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 833
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 834
    :cond_6
    return v3

    .line 836
    :cond_7
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 839
    :cond_8
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 840
    return v3

    .line 842
    :cond_9
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 843
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 844
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 845
    return v3

    .line 843
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 849
    .end local v1    # "i":I
    :cond_b
    return v2

    .line 837
    :cond_c
    :goto_2
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1713
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    if-nez v0, :cond_2

    .line 1714
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1715
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1716
    iget-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 1717
    .local v2, "animator":Landroid/animation/Animator;
    invoke-static {v2}, Landroidx/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    .line 1715
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1719
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1720
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1721
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1722
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1723
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1724
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    .line 1723
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1727
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 1729
    .end local v0    # "numAnimators":I
    :cond_2
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1768
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V

    .line 1770
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1771
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1772
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v2

    .line 1773
    .local v2, "windowId":Landroidx/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 1774
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1775
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_5

    .line 1776
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 1777
    .local v5, "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_5

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    .line 1778
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1779
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 1780
    .local v6, "oldValues":Landroidx/transition/TransitionValues;
    iget-object v7, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1781
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v9

    .line 1782
    .local v9, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v10

    .line 1783
    .local v10, "endValues":Landroidx/transition/TransitionValues;
    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 1784
    iget-object v11, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v11, v11, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v11, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v10, v11

    check-cast v10, Landroidx/transition/TransitionValues;

    .line 1786
    :cond_0
    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    iget-object v11, v5, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 1787
    invoke-virtual {v11, v6, v10}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1788
    .local v8, "cancel":Z
    :goto_1
    if-eqz v8, :cond_5

    .line 1789
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 1798
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1793
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1773
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroidx/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroidx/transition/TransitionValues;
    .end local v10    # "endValues":Landroidx/transition/TransitionValues;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1805
    .end local v3    # "i":I
    :cond_6
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1806
    invoke-virtual {p0}, Landroidx/transition/Transition;->runAnimators()V

    .line 1807
    return-void
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 2042
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2043
    return-object p0

    .line 2045
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2046
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2047
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2049
    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Landroidx/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I

    .line 1108
    if-eqz p1, :cond_0

    .line 1109
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1111
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1092
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1093
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    .line 1144
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1147
    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .locals 1
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1129
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1740
    iget-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_2

    .line 1741
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    if-nez v0, :cond_1

    .line 1742
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1743
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1744
    iget-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 1745
    .local v2, "animator":Landroid/animation/Animator;
    invoke-static {v2}, Landroidx/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    .line 1743
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1747
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1748
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1749
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1750
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1751
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1752
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    .line 1751
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1756
    .end local v0    # "numAnimators":I
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 1758
    :cond_2
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 872
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 873
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 875
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 879
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 881
    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V

    .line 883
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    goto :goto_0

    .line 884
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 885
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    .line 886
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .line 2192
    iput-boolean p1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 2193
    return-void
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .locals 0
    .param p1, "duration"    # J

    .line 341
    iput-wide p1, p0, Landroidx/transition/Transition;->mDuration:J

    .line 342
    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroidx/transition/Transition$EpicenterCallback;

    .line 2102
    iput-object p1, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 2103
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 395
    iput-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 396
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    .line 507
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 510
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 511
    aget v1, p1, v0

    .line 512
    .local v1, "match":I
    invoke-static {v1}, Landroidx/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    invoke-static {p1, v0}, Landroidx/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .restart local v1    # "match":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 508
    :cond_4
    :goto_1
    sget-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 521
    :goto_2
    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroidx/transition/PathMotion;

    .line 2069
    if-nez p1, :cond_0

    .line 2070
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    goto :goto_0

    .line 2072
    :cond_0
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 2074
    :goto_0
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .locals 0
    .param p1, "transitionPropagation"    # Landroidx/transition/TransitionPropagation;

    .line 2148
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 2149
    return-void
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .locals 0
    .param p1, "startDelay"    # J

    .line 368
    iput-wide p1, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 369
    return-object p0
.end method

.method protected start()V
    .locals 4

    .line 1915
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_1

    .line 1916
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1917
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1918
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1919
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1920
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1921
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    .line 1920
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1924
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 1926
    :cond_1
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 1927
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2197
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2234
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2235
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, ") "

    if-eqz v1, :cond_0

    .line 2236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "dur("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroidx/transition/Transition;->mDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2238
    :cond_0
    iget-wide v5, p0, Landroidx/transition/Transition;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    .line 2239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dly("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroidx/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2241
    :cond_1
    iget-object v1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_2

    .line 2242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "interp("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2244
    :cond_2
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2245
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2246
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_5

    .line 2247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2248
    if-lez v1, :cond_4

    .line 2249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2251
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2254
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2255
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 2256
    if-lez v1, :cond_6

    .line 2257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2259
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2262
    .end local v1    # "i":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2264
    :cond_8
    return-object v0
.end method
