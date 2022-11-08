.class public Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;
.super Ljava/lang/Object;
.source "RemoteAnimationTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RemoteAnimationTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleaseCheck"
.end annotation


# instance fields
.field private mAfterApplyCallback:Ljava/lang/Runnable;

.field mCanRelease:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mCanRelease:Z

    return-void
.end method

.method static synthetic lambda$addOnSafeToReleaseCallback$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callback"    # Ljava/lang/Runnable;
    .param p1, "oldCallback"    # Ljava/lang/Runnable;

    .line 173
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 174
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 175
    return-void
.end method


# virtual methods
.method addOnSafeToReleaseCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 165
    iget-boolean v0, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mCanRelease:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 169
    iput-object p1, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 172
    .local v0, "oldCallback":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 178
    .end local v0    # "oldCallback":Ljava/lang/Runnable;
    :goto_0
    return-void
.end method

.method protected setCanRelease(Z)V
    .locals 2
    .param p1, "canRelease"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mCanRelease:Z

    .line 154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 156
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->mAfterApplyCallback:Ljava/lang/Runnable;

    .line 157
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 159
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
