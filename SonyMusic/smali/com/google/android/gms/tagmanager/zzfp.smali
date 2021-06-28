.class final Lcom/google/android/gms/tagmanager/zzfp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzakz:Lcom/google/android/gms/tagmanager/zzfn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfp;->zzakz:Lcom/google/android/gms/tagmanager/zzfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfp;->zzakz:Lcom/google/android/gms/tagmanager/zzfn;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfn;->zze(Lcom/google/android/gms/tagmanager/zzfn;)Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcb;->dispatch()V

    return-void
.end method
