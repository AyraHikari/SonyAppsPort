.class final synthetic Lcom/google/android/gms/internal/gtm/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzace:Lcom/google/android/gms/internal/gtm/zzcq;

.field private final zzach:Lcom/google/android/gms/internal/gtm/zzci;

.field private final zzaci:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcq;Lcom/google/android/gms/internal/gtm/zzci;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzace:Lcom/google/android/gms/internal/gtm/zzcq;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzach:Lcom/google/android/gms/internal/gtm/zzci;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzaci:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzace:Lcom/google/android/gms/internal/gtm/zzcq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzach:Lcom/google/android/gms/internal/gtm/zzci;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzaci:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcq;->zza(Lcom/google/android/gms/internal/gtm/zzci;Landroid/app/job/JobParameters;)V

    return-void
.end method
