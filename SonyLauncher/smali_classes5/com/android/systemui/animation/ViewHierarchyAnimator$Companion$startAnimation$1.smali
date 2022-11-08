.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewHierarchyAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->startAnimation(Landroid/view/View;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Landroid/view/animation/Interpolator;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewHierarchyAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewHierarchyAnimator.kt\ncom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,886:1\n1849#2,2:887\n*S KotlinDebug\n*F\n+ 1 ViewHierarchyAnimator.kt\ncom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1\n*L\n815#1:887,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "com/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "cancelled",
        "",
        "getCancelled",
        "()Z",
        "setCancelled",
        "(Z)V",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
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
.field final synthetic $bounds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ephemeral:Z

.field final synthetic $view:Landroid/view/View;

.field private cancelled:Z


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/Set;Z)V
    .locals 0
    .param p1, "$view"    # Landroid/view/View;
    .param p2, "$bounds"    # Ljava/util/Set;
    .param p3, "$ephemeral"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$bounds:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$ephemeral:Z

    .line 810
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCancelled()Z
    .locals 1

    .line 811
    iget-boolean v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    .line 829
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/Animator;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    sget v1, Lcom/android/systemui/animation/R$id;->tag_animator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$bounds:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    const/4 v3, 0x0

    .line 887
    .local v3, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    .local v6, "it":Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    const/4 v7, 0x0

    .line 815
    .local v7, "$i$a$-forEach-ViewHierarchyAnimator$Companion$startAnimation$1$onAnimationEnd$1":I
    invoke-virtual {v6}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    move-result v8

    invoke-virtual {v1, v8, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
    .end local v7    # "$i$a$-forEach-ViewHierarchyAnimator$Companion$startAnimation$1$onAnimationEnd$1":I
    goto :goto_0

    .line 888
    :cond_0
    nop

    .line 819
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iget-boolean v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$ephemeral:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    if-nez v0, :cond_1

    .line 823
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    iget-object v1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->access$recursivelyRemoveListener(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;)V

    .line 825
    :cond_1
    return-void
.end method

.method public final setCancelled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 811
    iput-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    return-void
.end method
