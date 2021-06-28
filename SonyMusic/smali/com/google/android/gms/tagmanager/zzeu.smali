.class final Lcom/google/android/gms/tagmanager/zzeu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzev;


# instance fields
.field private final synthetic zzajl:Lcom/google/android/gms/tagmanager/zzes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeu;->zzajl:Lcom/google/android/gms/tagmanager/zzes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzer;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzer;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzeu;->zzajl:Lcom/google/android/gms/tagmanager/zzes;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzes;->zza(Lcom/google/android/gms/tagmanager/zzes;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzeu;->zzajl:Lcom/google/android/gms/tagmanager/zzes;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzes;->zzb(Lcom/google/android/gms/tagmanager/zzes;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/zzer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzal;)V

    return-object v0
.end method
