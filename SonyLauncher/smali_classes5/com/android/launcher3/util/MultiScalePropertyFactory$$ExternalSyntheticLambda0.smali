.class public final synthetic Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    iput-object p2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    iget-object v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->lambda$get$0$com-android-launcher3-util-MultiScalePropertyFactory(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object p1

    return-object p1
.end method
