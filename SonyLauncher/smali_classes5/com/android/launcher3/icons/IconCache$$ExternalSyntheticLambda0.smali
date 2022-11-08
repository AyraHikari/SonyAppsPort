.class public final synthetic Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconCache;->lambda$loadIconSubsection$14(Ljava/util/List;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    return-object v0
.end method
