.class final Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;
.super Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.source "ViewHierarchyAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RIGHT"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;",
        "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
        "getValue",
        "",
        "view",
        "Landroid/view/View;",
        "setValue",
        "",
        "value",
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


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 863
    sget v4, Lcom/android/systemui/animation/R$id;->tag_override_right:I

    const-string v3, "right"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 866
    return-void
.end method
