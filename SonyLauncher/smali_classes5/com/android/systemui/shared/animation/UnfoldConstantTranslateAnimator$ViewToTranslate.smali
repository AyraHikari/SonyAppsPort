.class final Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;
.super Ljava/lang/Object;
.source "UnfoldConstantTranslateAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewToTranslate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B)\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0010\nJ\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J3\u0010\u0014\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;",
        "",
        "view",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "direction",
        "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;",
        "shouldBeAnimated",
        "Lkotlin/Function0;",
        "",
        "(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)V",
        "getDirection",
        "()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;",
        "getShouldBeAnimated",
        "()Lkotlin/jvm/functions/Function0;",
        "getView",
        "()Ljava/lang/ref/WeakReference;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

.field private final shouldBeAnimated:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "view"    # Ljava/lang/ref/WeakReference;
    .param p2, "direction"    # Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .param p3, "shouldBeAnimated"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shouldBeAnimated"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    .line 87
    iput-object p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    .line 88
    iput-object p3, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    .line 85
    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->copy(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component2()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    return-object v0
.end method

.method public final component3()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final copy(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shouldBeAnimated"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;

    iget-object v3, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    iget-object v4, v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    iget-object v4, v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    iget-object v1, v1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDirection()Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    return-object v0
.end method

.method public final getShouldBeAnimated()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getView()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    invoke-virtual {v2}, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewToTranslate(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->direction:Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldBeAnimated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator$ViewToTranslate;->shouldBeAnimated:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
