.class public final synthetic Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/pm/UserCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/pm/UserCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/pm/UserCache;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/android/launcher3/pm/UserCache;->$r8$lambda$zu1GNRG_zl1pJdIxkVp1lPzVZaM(Lcom/android/launcher3/pm/UserCache;Landroid/content/Intent;)V

    return-void
.end method
