.class final Lcom/google/android/gms/internal/gtm/zzax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$name:Landroid/content/ComponentName;

.field private final synthetic zzxi:Lcom/google/android/gms/internal/gtm/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzav;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzxi:Lcom/google/android/gms/internal/gtm/zzav;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzax;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzxi:Lcom/google/android/gms/internal/gtm/zzav;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzav;->zzxe:Lcom/google/android/gms/internal/gtm/zzat;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzax;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzat;->zza(Lcom/google/android/gms/internal/gtm/zzat;Landroid/content/ComponentName;)V

    return-void
.end method
