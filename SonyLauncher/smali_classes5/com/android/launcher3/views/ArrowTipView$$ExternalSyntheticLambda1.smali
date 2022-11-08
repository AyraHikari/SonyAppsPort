.class public final synthetic Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/views/ArrowTipView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/ArrowTipView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/views/ArrowTipView;

    iput p2, p0, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/views/ArrowTipView;

    iget v1, p0, Lcom/android/launcher3/views/ArrowTipView$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->lambda$show$1$com-android-launcher3-views-ArrowTipView(I)V

    return-void
.end method
