.class final Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener;
.super Ljava/lang/Object;
.source "FixedTimingTransitionProgressProvider.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimatorListener"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFixedTimingTransitionProgressProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixedTimingTransitionProgressProvider.kt\ncom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1849#2,2:107\n1849#2,2:109\n*S KotlinDebug\n*F\n+ 1 FixedTimingTransitionProgressProvider.kt\ncom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener\n*L\n90#1:107,2\n94#1:109,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener;",
        "Landroid/animation/Animator$AnimatorListener;",
        "(Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;)V",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
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
.field final synthetic this$0:Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener;->this$0:Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/Animator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener;->this$0:Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    invoke-static {v0}, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;->access$getListeners$p(Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 109
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

    check-cast v4, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .local v4, "it":Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;
    const/4 v5, 0x0

    .line 94
    .local v5, "$i$a$-forEach-FixedTimingTransitionProgressProvider$AnimatorListener$onAnimationEnd$1":I
    invoke-interface {v4}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionFinished()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;
    .end local v5    # "$i$a$-forEach-FixedTimingTransitionProgressProvider$AnimatorListener$onAnimationEnd$1":I
    goto :goto_0

    .line 110
    :cond_0
    nop

    .line 95
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animator"    # Landroid/animation/Animator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider$AnimatorListener;->this$0:Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;

    invoke-static {v0}, Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;->access$getListeners$p(Lcom/android/systemui/unfold/progress/FixedTimingTransitionProgressProvider;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 107
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

    check-cast v4, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    .local v4, "it":Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;
    const/4 v5, 0x0

    .line 90
    .local v5, "$i$a$-forEach-FixedTimingTransitionProgressProvider$AnimatorListener$onAnimationStart$1":I
    invoke-interface {v4}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionStarted()V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;
    .end local v5    # "$i$a$-forEach-FixedTimingTransitionProgressProvider$AnimatorListener$onAnimationStart$1":I
    goto :goto_0

    .line 108
    :cond_0
    nop

    .line 91
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
