.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Lcom/android/systemui/animation/LaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,622:1\n1849#2,2:623\n1849#2,2:625\n1849#2,2:628\n1#3:627\n*S KotlinDebug\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1\n*L\n465#1:623,2\n470#1:625,2\n487#1:628,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\t\u0010\u000c\u001a\u00020\rH\u0096\u0001J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0018\u0010\u0002\u001a\u00020\u0003X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "com/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1",
        "Lcom/android/systemui/animation/LaunchAnimator$Controller;",
        "launchContainer",
        "Landroid/view/ViewGroup;",
        "getLaunchContainer",
        "()Landroid/view/ViewGroup;",
        "setLaunchContainer",
        "(Landroid/view/ViewGroup;)V",
        "openingWindowSyncView",
        "Landroid/view/View;",
        "getOpeningWindowSyncView",
        "()Landroid/view/View;",
        "createAnimatorState",
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "onLaunchAnimationEnd",
        "",
        "isExpandingFullyAbove",
        "",
        "onLaunchAnimationProgress",
        "state",
        "progress",
        "",
        "linearProgress",
        "onLaunchAnimationStart",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field final synthetic $delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field final synthetic $navigationBar:Landroid/view/RemoteAnimationTarget;

.field final synthetic $window:Landroid/view/RemoteAnimationTarget;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field final synthetic this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V
    .locals 0
    .param p1, "$delegate"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .param p2, "$receiver"    # Lcom/android/systemui/animation/ActivityLaunchAnimator;
    .param p3, "$iCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;
    .param p4, "$receiver"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .param p5, "$window"    # Landroid/view/RemoteAnimationTarget;
    .param p6, "$navigationBar"    # Landroid/view/RemoteAnimationTarget;

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iput-object p5, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    iput-object p6, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getOpeningWindowSyncView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 6
    .param p1, "isExpandingFullyAbove"    # Z

    .line 470
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getListeners$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 625
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .local v4, "it":Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
    const/4 v5, 0x0

    .line 470
    .local v5, "$i$a$-forEach-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationEnd$1":I
    invoke-interface {v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationEnd()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
    .end local v5    # "$i$a$-forEach-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationEnd$1":I
    goto :goto_0

    .line 626
    :cond_0
    nop

    .line 471
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {v1, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$invoke(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 472
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 473
    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p2, "progress"    # F
    .param p3, "linearProgress"    # F

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$window:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToWindow(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$navigationBar:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$1:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 627
    .local v0, "it":Landroid/view/RemoteAnimationTarget;
    const/4 v2, 0x0

    .line 485
    .local v2, "$i$a$-let-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationProgress$1":I
    invoke-static {v1, v0, p1, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$applyStateToNavigationBar(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/LaunchAnimator$State;F)V

    .line 487
    .end local v0    # "it":Landroid/view/RemoteAnimationTarget;
    .end local v2    # "$i$a$-let-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationProgress$1":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getListeners$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 628
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .local v4, "it":Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
    const/4 v5, 0x0

    .line 487
    .local v5, "$i$a$-forEach-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationProgress$2":I
    invoke-interface {v4, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationProgress(F)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
    .end local v5    # "$i$a$-forEach-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationProgress$2":I
    goto :goto_1

    .line 629
    :cond_2
    nop

    .line 488
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 489
    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 6
    .param p1, "isExpandingFullyAbove"    # Z

    .line 465
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getListeners$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Ljava/util/LinkedHashSet;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 623
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .local v4, "it":Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
    const/4 v5, 0x0

    .line 465
    .local v5, "$i$a$-forEach-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationStart$1":I
    invoke-interface {v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationStart()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;
    .end local v5    # "$i$a$-forEach-ActivityLaunchAnimator$Runner$startAnimation$controller$1$onLaunchAnimationStart$1":I
    goto :goto_0

    .line 624
    :cond_0
    nop

    .line 466
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    .line 467
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->setLaunchContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
