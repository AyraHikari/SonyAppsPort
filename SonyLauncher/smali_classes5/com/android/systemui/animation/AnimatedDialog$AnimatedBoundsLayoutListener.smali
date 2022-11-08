.class public final Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/AnimatedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimatedBoundsLayoutListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002JP\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "()V",
        "currentAnimator",
        "Landroid/animation/ValueAnimator;",
        "lastBounds",
        "Landroid/graphics/Rect;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "Companion",
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


# static fields
.field private static final ANIMATION_DURATION:J = 0x1f4L

.field public static final Companion:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$Companion;


# instance fields
.field private currentAnimator:Landroid/animation/ValueAnimator;

.field private lastBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->Companion:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setCurrentAnimator$p(Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;
    .param p1, "<set-?>"    # Landroid/animation/ValueAnimator;

    .line 795
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->currentAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v11, p9

    const-string v1, "view"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    move/from16 v10, p2

    if-ne v10, v13, :cond_1

    move/from16 v9, p3

    if-ne v9, v14, :cond_2

    move/from16 v8, p4

    if-ne v8, v15, :cond_3

    move/from16 v7, p5

    if-ne v7, v11, :cond_4

    .line 817
    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->lastBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_0

    .local v1, "bounds":Landroid/graphics/Rect;
    :cond_0
    const/4 v2, 0x0

    .line 818
    .local v2, "$i$a$-let-AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$1":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v3}, Landroid/view/View;->setLeft(I)V

    .line 819
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v3}, Landroid/view/View;->setTop(I)V

    .line 820
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, v3}, Landroid/view/View;->setRight(I)V

    .line 821
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v3}, Landroid/view/View;->setBottom(I)V

    .line 822
    nop

    .line 817
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "$i$a$-let-AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$1":I
    nop

    .line 823
    :goto_0
    return-void

    .line 815
    :cond_1
    move/from16 v9, p3

    :cond_2
    move/from16 v8, p4

    :cond_3
    move/from16 v7, p5

    .line 826
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->lastBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_5

    .line 827
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v13, v14, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->lastBounds:Landroid/graphics/Rect;

    .line 830
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->lastBounds:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v1

    .line 831
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 832
    .local v5, "startLeft":I
    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 833
    .local v4, "startTop":I
    iget v3, v6, Landroid/graphics/Rect;->right:I

    .line 834
    .local v3, "startRight":I
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 836
    .local v2, "startBottom":I
    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->currentAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 837
    :goto_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 839
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v16

    move-object/from16 v1, v16

    .local v1, "$this$onLayoutChange_u24lambda_u2d1":Landroid/animation/ValueAnimator;
    const/16 v17, 0x0

    .line 840
    .local v17, "$i$a$-apply-AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1":I
    move/from16 v19, v2

    move/from16 v18, v3

    .end local v2    # "startBottom":I
    .end local v3    # "startRight":I
    .local v18, "startRight":I
    .local v19, "startBottom":I
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 841
    sget-object v2, Lcom/android/systemui/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 843
    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 849
    new-instance v20, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;

    move-object v3, v1

    .end local v1    # "$this$onLayoutChange_u24lambda_u2d1":Landroid/animation/ValueAnimator;
    .local v3, "$this$onLayoutChange_u24lambda_u2d1":Landroid/animation/ValueAnimator;
    move-object/from16 v1, v20

    move-object v2, v6

    move-object v12, v3

    .end local v3    # "$this$onLayoutChange_u24lambda_u2d1":Landroid/animation/ValueAnimator;
    .local v12, "$this$onLayoutChange_u24lambda_u2d1":Landroid/animation/ValueAnimator;
    move v3, v5

    move/from16 v21, v4

    .end local v4    # "startTop":I
    .local v21, "startTop":I
    move/from16 v4, p2

    move/from16 v22, v5

    .end local v5    # "startLeft":I
    .local v22, "startLeft":I
    move/from16 v5, v21

    move-object/from16 v23, v6

    .end local v6    # "bounds":Landroid/graphics/Rect;
    .local v23, "bounds":Landroid/graphics/Rect;
    move/from16 v6, p3

    move/from16 v7, v18

    move/from16 v8, p4

    move/from16 v9, v19

    move/from16 v10, p5

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1$2;-><init>(Landroid/graphics/Rect;IIIIIIIILandroid/view/View;)V

    move-object/from16 v1, v20

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 864
    nop

    .line 839
    .end local v12    # "$this$onLayoutChange_u24lambda_u2d1":Landroid/animation/ValueAnimator;
    .end local v17    # "$i$a$-apply-AnimatedDialog$AnimatedBoundsLayoutListener$onLayoutChange$animator$1":I
    move-object/from16 v1, v16

    .line 866
    .local v1, "animator":Landroid/animation/ValueAnimator;
    iput-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 867
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 868
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
