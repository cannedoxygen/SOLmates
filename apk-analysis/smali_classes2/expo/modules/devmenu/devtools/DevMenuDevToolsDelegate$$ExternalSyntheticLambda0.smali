.class public final synthetic Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

.field public final synthetic f$1:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    iput-object p2, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    iget-object v1, p0, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-static {v0, v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->$r8$lambda$lDV3UABePeRt-BUC7Uu25K38Uac(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    return-void
.end method
