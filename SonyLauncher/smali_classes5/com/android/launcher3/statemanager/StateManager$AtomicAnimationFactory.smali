.class public Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomicAnimationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final NEXT_INDEX:I


# instance fields
.field private final mStateElementAnimators:[Landroid/animation/Animator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStateElementAnimators(Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;)[Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->mStateElementAnimators:[Landroid/animation/Animator;

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "sharedElementAnimCount"    # I

    .line 607
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;, "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<TSTATE_TYPE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    new-array v0, p1, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->mStateElementAnimators:[Landroid/animation/Animator;

    .line 609
    return-void
.end method


# virtual methods
.method cancelAllStateElementAnimation()V
    .locals 4

    .line 612
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;, "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;->mStateElementAnimators:[Landroid/animation/Animator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 613
    .local v3, "animator":Landroid/animation/Animator;
    if-eqz v3, :cond_0

    .line 614
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 612
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_1
    return-void
.end method

.method public varargs createStateElementAnimation(I[F)Landroid/animation/Animator;
    .locals 3
    .param p1, "index"    # I
    .param p2, "values"    # [F

    .line 625
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;, "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<TSTATE_TYPE;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown gesture animation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareForAtomicAnimation(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 0
    .param p3, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE_TYPE;TSTATE_TYPE;",
            "Lcom/android/launcher3/states/StateAnimationConfig;",
            ")V"
        }
    .end annotation

    .line 635
    .local p0, "this":Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;, "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<TSTATE_TYPE;>;"
    .local p1, "fromState":Ljava/lang/Object;, "TSTATE_TYPE;"
    .local p2, "toState":Ljava/lang/Object;, "TSTATE_TYPE;"
    return-void
.end method
