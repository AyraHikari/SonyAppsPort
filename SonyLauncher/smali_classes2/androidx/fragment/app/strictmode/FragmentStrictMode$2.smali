.class Landroidx/fragment/app/strictmode/FragmentStrictMode$2;
.super Ljava/lang/Object;
.source "FragmentStrictMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragmentName:Ljava/lang/String;

.field final synthetic val$violation:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    .line 485
    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;->val$fragmentName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;->val$violation:Landroidx/fragment/app/strictmode/Violation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy violation with PENALTY_DEATH in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;->val$fragmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;->val$violation:Landroidx/fragment/app/strictmode/Violation;

    const-string v2, "FragmentStrictMode"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$2;->val$violation:Landroidx/fragment/app/strictmode/Violation;

    throw v0
.end method
