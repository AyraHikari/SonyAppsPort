.class public final synthetic Lcom/android/quickstep/FallbackActivityInterface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/FallbackActivityInterface$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/FallbackActivityInterface$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/quickstep/RecentsActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/android/quickstep/FallbackActivityInterface;->lambda$createActivityInitListener$0(Ljava/util/function/Predicate;Lcom/android/quickstep/RecentsActivity;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
