.class public Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;
.super Ljava/lang/Object;
.source "RemoteTransitionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mFilter:Landroid/window/TransitionFilter;

.field private mTransition:Landroid/window/RemoteTransition;


# direct methods
.method public constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 2
    .param p1, "transition"    # Landroid/window/RemoteTransition;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 568
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mTransition:Landroid/window/RemoteTransition;

    .line 569
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 571
    return-void
.end method

.method private checkNotUsed()V
    .locals 4

    .line 604
    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 608
    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    .locals 4

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->checkNotUsed()V

    .line 592
    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 594
    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mFilter:Landroid/window/TransitionFilter;

    .line 597
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/system/RemoteTransitionCompat;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mTransition:Landroid/window/RemoteTransition;

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mFilter:Landroid/window/TransitionFilter;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    .line 600
    .local v0, "o":Lcom/android/systemui/shared/system/RemoteTransitionCompat;
    return-object v0
.end method

.method public setFilter(Landroid/window/TransitionFilter;)Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;
    .locals 4
    .param p1, "value"    # Landroid/window/TransitionFilter;

    .line 583
    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->checkNotUsed()V

    .line 584
    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 585
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mFilter:Landroid/window/TransitionFilter;

    .line 586
    return-object p0
.end method

.method public setTransition(Landroid/window/RemoteTransition;)Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;
    .locals 4
    .param p1, "value"    # Landroid/window/RemoteTransition;

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->checkNotUsed()V

    .line 576
    iget-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 577
    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$Builder;->mTransition:Landroid/window/RemoteTransition;

    .line 578
    return-object p0
.end method
