.class public final synthetic Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/interaction/AllSetActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/AllSetActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/interaction/AllSetActivity;

    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {v0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->$r8$lambda$Bqx6lMb35TP_nkgdJH0ePIgulkU(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p1

    return-object p1
.end method
