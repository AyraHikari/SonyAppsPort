.class public final synthetic Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;->f$0:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/IconCache$$ExternalSyntheticLambda13;->f$0:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0}, Lcom/android/launcher3/icons/IconCache;->lambda$getShortcutIcon$4(Landroid/content/pm/ShortcutInfo;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
